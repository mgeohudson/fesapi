/*-----------------------------------------------------------------------
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"; you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-----------------------------------------------------------------------*/
#include "resqml2_2test/WellboreFrameRepresentationTest.h"

#include "catch.hpp"

#include "resqml2_0_1test/WellboreInterpretationTest.h"
#include "resqml2_0_1test/WellboreTrajectoryRepresentationTest.h"

#include "resqml2_0_1/WellboreInterpretation.h"
#include "resqml2_0_1/WellboreTrajectoryRepresentation.h"
#include "resqml2/WellboreFrameRepresentation.h"
#include "common/AbstractHdfProxy.h"

using namespace std;
using namespace COMMON_NS;
using namespace resqml2_2test;

const char* WellboreFrameRepresentationTest::defaultUuid = "0047500b-cf08-47c0-89e0-84f330c7e132";
const char* WellboreFrameRepresentationTest::defaultTitle = "Wellbore Frame Representation";

WellboreFrameRepresentationTest::WellboreFrameRepresentationTest(const string & epcDocPath)
	: commontest::AbstractObjectTest(epcDocPath) {
}

WellboreFrameRepresentationTest::WellboreFrameRepresentationTest(DataObjectRepository * repo, bool init)
	: commontest::AbstractObjectTest(repo) {
	if (init)
		initRepo();
	else
		readRepo();
}

void WellboreFrameRepresentationTest::initRepoHandler() {
	// creating dependencies
	resqml2_0_1test::WellboreTrajectoryRepresentationTest trajTest(repo, true);

	RESQML2_0_1_NS::WellboreInterpretation * interp = static_cast<RESQML2_0_1_NS::WellboreInterpretation*>(repo->getDataObjectByUuid(resqml2_0_1test::WellboreInterpretationTest::defaultUuid));
	RESQML2_0_1_NS::WellboreTrajectoryRepresentation * traj = static_cast<RESQML2_0_1_NS::WellboreTrajectoryRepresentation*>(repo->getDataObjectByUuid(resqml2_0_1test::WellboreTrajectoryRepresentationTest::defaultUuid));

	// getting the hdf proxy
	COMMON_NS::AbstractHdfProxy* hdfProxy = repo->getHdfProxySet()[0];
	REQUIRE(hdfProxy != nullptr);

	// WellboreFeature frame
	RESQML2_NS::WellboreFrameRepresentation* w1i1FrameRep = repo->createWellboreFrameRepresentation(interp, defaultUuid, defaultTitle, traj);
	double logMds[5] = { 0, 250, 500, 750, 1200 };
	w1i1FrameRep->setMdValues(logMds, 5, hdfProxy);
}

void WellboreFrameRepresentationTest::readRepoHandler() {
	RESQML2_NS::WellboreFrameRepresentation* w1i1FrameRep = repo->getDataObjectByUuid<RESQML2_NS::WellboreFrameRepresentation>(defaultUuid);
	REQUIRE(w1i1FrameRep != nullptr);

	RESQML2_0_1_NS::WellboreTrajectoryRepresentation* traj = static_cast<RESQML2_0_1_NS::WellboreTrajectoryRepresentation*>(repo->getDataObjectByUuid(resqml2_0_1test::WellboreTrajectoryRepresentationTest::defaultUuid));
	RESQML2_NS::WellboreFrameRepresentation* w1i1FrameRepFromTraj = traj->getWellboreFrameRepresentation(0);	
	REQUIRE(w1i1FrameRep->getUuid() == w1i1FrameRepFromTraj->getUuid());

	REQUIRE(w1i1FrameRep->areMdValuesRegularlySpaced() == false);
	REQUIRE(w1i1FrameRep->getMdValuesCount() == 5);

	double* logMds = new double[w1i1FrameRep->getMdValuesCount()];

	w1i1FrameRep->getMdAsDoubleValues(logMds);
	REQUIRE(logMds[0] == .0);
	REQUIRE(logMds[1] == 250);
	REQUIRE(logMds[2] == 500);
	REQUIRE(logMds[3] == 750);
	REQUIRE(logMds[4] == 1200);

	delete[] logMds;
}
