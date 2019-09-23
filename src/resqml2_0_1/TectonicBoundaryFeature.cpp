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
#include "resqml2_0_1/TectonicBoundaryFeature.h"

using namespace std;
using namespace RESQML2_0_1_NS;
using namespace gsoap_resqml2_0_1;

const char* TectonicBoundaryFeature::XML_TAG = "TectonicBoundaryFeature";

TectonicBoundaryFeature::TectonicBoundaryFeature(COMMON_NS::DataObjectRepository* repo, const string & guid, const string & title, const bool isAFracture)
{
	if (repo == nullptr) {
		throw invalid_argument("The repo must exist");
	}

	gsoapProxy2_0_1 = soap_new_resqml20__obj_USCORETectonicBoundaryFeature(repo->getGsoapContext(), 1);
	static_cast<gsoap_resqml2_0_1::_resqml20__TectonicBoundaryFeature*>(gsoapProxy2_0_1)->TectonicBoundaryKind = isAFracture ? gsoap_resqml2_0_1::resqml20__TectonicBoundaryKind__fracture : gsoap_resqml2_0_1::resqml20__TectonicBoundaryKind__fault;

	initMandatoryMetadata();
	setMetadata(guid, title, std::string(), -1, std::string(), std::string(), -1, std::string());

	repo->addOrReplaceDataObject(this);
}

bool TectonicBoundaryFeature::isAFracture() const
{
	return static_cast<gsoap_resqml2_0_1::_resqml20__TectonicBoundaryFeature*>(gsoapProxy2_0_1)->TectonicBoundaryKind == gsoap_resqml2_0_1::resqml20__TectonicBoundaryKind__fracture;
}
