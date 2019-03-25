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
#include "AbstractObjectTest.h"

#include "catch.hpp"
#include "AbstractTest.h"
#include "config.h"

#include "common/EpcDocument.h"
#include "common/AbstractObject.h"

using namespace std;
using namespace commontest;

AbstractObjectTest::AbstractObjectTest(const string & epcDocPath, const string & uuid, const string & title) :
	AbstractTest(epcDocPath),
	uuid(uuid),
	title(title) {
}

AbstractObjectTest::AbstractObjectTest(COMMON_NS::EpcDocument* epcDoc, const string & uuid, const string & title) :
	AbstractTest(epcDoc),
	uuid(uuid),
	title(title) {
}

void AbstractObjectTest::initEpcDoc()
{
	if (epcDoc == nullptr)
		throw std::logic_error("The EPC document is not initialized.");

	if (epcDoc->getDataObjectByUuid(uuid) != nullptr)
		return;

	initEpcDocHandler();

	COMMON_NS::AbstractObject* resqmlObject = static_cast<COMMON_NS::AbstractObject*>(epcDoc->getDataObjectByUuid(uuid));
	resqmlObject->addAlias(authorityAlias, titleAlias);
}

void AbstractObjectTest::readEpcDoc() {
	COMMON_NS::AbstractObject* resqmlObject = static_cast<COMMON_NS::AbstractObject*>(epcDoc->getDataObjectByUuid(uuid));
	REQUIRE(resqmlObject != nullptr);
	REQUIRE(resqmlObject->getUuid() == uuid);
	REQUIRE(resqmlObject->getTitle() == title);
	REQUIRE(resqmlObject->getAliasCount() == 1);
	REQUIRE(resqmlObject->getAliasAuthorityAtIndex(0) == authorityAlias);
	REQUIRE(resqmlObject->getAliasTitleAtIndex(0) == titleAlias);

	readEpcDocHandler();
}
