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
#pragma once

#include "MyOwnEtpPlainServerSession.h"

class MyOwnDiscoveryProtocolHandlers : public ETP_NS::DiscoveryHandlers
{
private:
	void on_GetEmlColonSlashSlash(COMMON_NS::EpcDocument & epcDoc, const Energistics::Etp::v12::Protocol::Discovery::GetTreeResources & gtr, int64_t correlationId,
		std::vector<Energistics::Etp::v12::Datatypes::Object::Resource> & result);

	void on_GetEmlColonSlashSlashResqml20(COMMON_NS::EpcDocument & epcDoc, const Energistics::Etp::v12::Protocol::Discovery::GetTreeResources & gtr, int64_t correlationId,
		std::vector<Energistics::Etp::v12::Datatypes::Object::Resource> & result, bool self = false);
	
	void on_GetEmlColonSlashSlashEml20(COMMON_NS::EpcDocument & epcDoc, const Energistics::Etp::v12::Protocol::Discovery::GetTreeResources & gtr, int64_t correlationId,
		std::vector<Energistics::Etp::v12::Datatypes::Object::Resource> & result, bool self = false);

	void on_GetFolder(COMMON_NS::EpcDocument & epcDoc, const Energistics::Etp::v12::Protocol::Discovery::GetTreeResources & gtr, int64_t correlationId,
		std::vector<Energistics::Etp::v12::Datatypes::Object::Resource> & result, bool self = false);

	void on_GetDataObject(COMMON_NS::EpcDocument & epcDoc, const Energistics::Etp::v12::Protocol::Discovery::GetGraphResources & ggr, int64_t correlationId,
		std::vector<Energistics::Etp::v12::Datatypes::Object::Resource> & result);

public:
	MyOwnDiscoveryProtocolHandlers(ETP_NS::AbstractSession* mySession): ETP_NS::DiscoveryHandlers(mySession) {}
	~MyOwnDiscoveryProtocolHandlers() {}

	void on_GetTreeResources(const Energistics::Etp::v12::Protocol::Discovery::GetTreeResources & gtr, int64_t correlationId);
	void on_GetGraphResources(const Energistics::Etp::v12::Protocol::Discovery::GetGraphResources & ggr, int64_t correlationId);
};
