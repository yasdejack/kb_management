-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: bms
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app01_csvfile`
--

DROP TABLE IF EXISTS `app01_csvfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_csvfile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `last_modified` datetime(6) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_csvfile`
--

LOCK TABLES `app01_csvfile` WRITE;
/*!40000 ALTER TABLE `app01_csvfile` DISABLE KEYS */;
INSERT INTO `app01_csvfile` VALUES (1,'notebook','queries\nAbove-Ground Biomass\nAerosol optical depth\nAerosol-extinction coefficient\nAerosol-layer height\nAerosols\nAerosols properties\nAlbedo\nAnthropogenic Greenhouse Gas Fluxes\nAnthropogenic Water Use\nCarbon Dioxide\nChlorophyll-a Concentration\nCloud Properties\nClouds\nCommunity abundance\nCommunity composition\nCoral Reefs\nDaily maximum and minimum temperature\nDissolved Inorganic Carbon\nDissolved organic carbon\nEarth Radiation Budget\nEcosystem Vertical Profile\nEcosystem distribution\nEcosystem disturbances\nEcosystem functioning\nEcosystem phenology\nEcosystem structure\nEffective population size\nEstimates of liquid and solid precipitation\nFire\nFish abundace\nFish abundance and distribution\nFraction of Absorbed Photosynthetically Active Radiation\nGenetic composition\nGenetic differentiation\nGenetic diversity\nGlaciers\nGlobal Mean Sea Level\nGreenhouse gases\nGroundwater\nHard coral cover and composition\nIce Sheets and Ice Shelves\nInbreeding\nInorganic carbon\nInteraction diversity\nInterior Currents\nInterior Salinity\nInterior Temperature\nInterior ocean 39Ar\nInterior ocean 14C\nInterior ocean 3He\nInterior ocean CFC-11\nInterior ocean CFC-12\nInterior ocean Concentrations of nitrate\nInterior ocean Concentrations of phosphate\nInterior ocean Concentrations of silicate\nInterior ocean N2O\nInterior ocean Oxygen concentration\nInterior ocean SF6\nInterior ocean carbon storage\nInterior ocean tritium\nInvertebrate abundance and distribution\nLakes\nLand Cover\nLand Surface Temperature\nLatent Heat Flux\nLatent and Sensible Heat Fluxes\nLeaf Area Index\nLightning\nLive cover fraction\nLower-stratospheric profiles of water vapour\nMacroalgal Communities\nMacroalgal canopy cover and composition\nMangrove Forests\nMangrove cover and composition\nMarine Habitat Properties\nMarine birds abundance\nMarine birds distribution\nMarine debris\nMarine mammals abundance\nMarine mammals distribution\nMarine turtles abundance\nMarine turtles distribution\nMethane\nMethane and other Greenhouse Gases\nMicrobe biomass and diversity\nMorphology\nMovement\nN2O air-sea flux\nNitrous oxide\nNumber of lightnings\nNutrients\nOcean Colour\nOcean Sound\nOcean Surface Heat Flux\nOcean colour\nOcean sound\nOcean surface heat flux\nOcean surface stress\nOxygen\nOzone\nParticulate matter\nPermafrost\nPhenology\nPhysiology\nPhytoplankton\nPhytoplankton biomass and diversity\nPlankton\nPrecipitation\nPrecursors for aerosols and ozone\nPressure\nPrimary productivity\nRadiation budget\nRegional Sea Level\nReproduction\nRiver Discharge\nSea Ice\nSea Ice Concentration\nSea Ice Drift\nSea Ice Extent/Edge\nSea Ice Thickness\nSea Level\nSea State\nSea Surface Salinity\nSea Surface Temperature\nSea ice\nSea level\nSea state\nSea surface currents\nSea surface height\nSea surface salinity\nSea surface stress\nSea surface temperature\nSeagrass Beds\nSeagrass cover and composition\nSensible Heat Flux\nSingle-scattering albedo\nSnow\nSoil Carbon\nSoil Moisture\nSolar spectral irradiance\nSpecies abundances\nSpecies distributions\nSpecies populations\nSpecies traits\nStable carbon isotopes\nStratospheric Temperature profile\nSubsurface Curents\nSubsurface Salinity\nSubsurface Temperature\nSubsurface currents\nSubsurface salinity\nSubsurface temperature\nSurface Currents\nSurface ERB longwave\nSurface ERB shortwave\nSurface Geostrophic Current\nSurface Radiation Budget\nSurface Stress\nSurface Wind Speed and direction\nSurface currents\nSurface wind speed and direction\nTaxonomic/phylogenetic diversity\nTemperature\nTemperature of deep atmospheric layers\nTop-of-atmosphere ERB longwave\nTop-of-atmosphere ERB shortwave\nTotal Alkalinity\nTotal column-water vapour\nTotal solar irradiance\nTrait diversity\nTransient tracers\nTransient traces\nTropospheric CO2 column\nTropospheric Temperature profile\nTropospheric profiles of water vapour\nUpper tropospheric humidity\nUpper-air wind retrievals\nWater Leaving Radiance\nWater vapour\nWave Height\nWind speed and direction\nZoo plankton\nZooplankton biomass and diversity\nabove-ground\nabsorbed\nabundance\nabundances\nactive\nactris\naerosols\nalbedo\nanaee\nanthropogenic\naquacosm\narise\nastronomy\natmosphere\natom\nbio\nbiochemistry\nbiology\nbiomass\nbirds\nbudget\ncanopy\ncarbon\ncell\nchemistry\ncloud\nclouds\nco2\ncommunity\ncomposition\ncoral\ncover\ncrust\ncurrents\ncycle\ndanubius-ri\ndata analysis\ndata mining\ndecision making\ndecision structure\ndecision tree\ndeep learning\ndensity\ndifferentiation\ndioxide\ndirection\ndischarge\ndissco\ndissolved\ndistance\ndistribution\ndistributions\ndisturbances\ndiversity\nearth\necosystem\neiscat\nelter\nembrc\nemso\nenvironment\nepos\neric\neufar\neuro-argo\neurochamp\neurofleets\neurogoos\nfapar\nfire\nfish\nfluxes\ngas\ngases\ngenetic\ngeography\ngeometry\nglaciers\ngravity\ngreen gas\ngreenhouse\ngroundwater\nhabitat\nhard\nheat\nhemera\nheterozygosity\niagos\nice\nicos\ninbreeding\ninorganic\ninteract\ninteraction\ninvertebrate\nis-enes\nisotopes\njerico-ri\nlai\nlakes\nland\nlatent\nlava\nleaf\nlifewatch\nlightning\nmacroalgal\nmammals\nmangrove\nmarine\nmethane\nmicrobe\nmoisture\nmorphology\nnatural\nnature\nnitrous\nnutrients\nocean\norganic\nother\noxide\noxygen\nozone\npCO2\npH\nparticle\nparticulate\nperiodic table\npermafrost\nphenology\nphotosynthetically\nphylogenetic\nphysics\nphysiology\nphytoplankton\nplankton\npopulation\nprecipitation\npressure\npsychology\nquantum\nradiation\nrain\nreinforcement learning\nrichness\nriver\nsalinity\nsea\nseadatanet\nseagrass\nsensible\nsheets\nshelves\nsios\nsnow\nsoftware engineering\nsoil\nspecies\nstable\nstress\nsubstance\nsubsurface\nsubsurface salinity\nsurface\ntaxonomic\ntechnology\ntelecommunication\ntemperature\ntracers\nturtles\nvapour\nvertical\nvolcano\nwater\nwave\nweather\nwind\n','2024-07-16 10:34:51.421305','SeaDataNet01');
/*!40000 ALTER TABLE `app01_csvfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_dashboard`
--

DROP TABLE IF EXISTS `app01_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_dashboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organization` varchar(32) NOT NULL,
  `link` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_dashboard`
--

LOCK TABLES `app01_dashboard` WRITE;
/*!40000 ALTER TABLE `app01_dashboard` DISABLE KEYS */;
INSERT INTO `app01_dashboard` VALUES (1,'ICOS','http://kibana:5601/s/icos/app/dashboards#/view/d8f95910-2e86-11ef-ab5c-13cea677e1cb?embed=true&_g=(refreshInterval%3A(pause%3A!t%2Cvalue%3A60000)%2Ctime%3A(from%3Anow-15y%2Cto%3Anow))&show-query-input=true&show-time-filter=true'),(2,'SeaDataNet','http://kibana:5601/s/seadatanet/app/dashboards#/view/fed131c0-2e87-11ef-ab5c-13cea677e1cb?embed=true&_g=(refreshInterval%3A(pause%3A!t%2Cvalue%3A60000)%2Ctime%3A(from%3Anow-15y%2Cto%3Anow))&show-query-input=true&show-time-filter=true');
/*!40000 ALTER TABLE `app01_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_jsonfile`
--

DROP TABLE IF EXISTS `app01_jsonfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_jsonfile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `data` json NOT NULL,
  `last_modified` datetime(6) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_jsonfile`
--

LOCK TABLES `app01_jsonfile` WRITE;
/*!40000 ALTER TABLE `app01_jsonfile` DISABLE KEYS */;
INSERT INTO `app01_jsonfile` VALUES (1,'webpage','{\"api\": {\"json\": {}, \"parameters\": {}}, \"dataset\": {\"icos\": {\"parameters\": {\"max_records\": 300, \"document_extension\": \".html\", \"documents_list_url\": \"https://meta.icos-cp.eu/sparql\"}}, \"json\": {\"RI_domains.json\": {\"EMSO\": [\"Marine\", \"Solid Earth\"], \"EPOS\": [\"Solid Earth\"], \"ICOS\": [\"Atmospheric\", \"Biosphere and ecosystem\", \"Marine\"], \"SIOS\": [\"Atmospheric\", \"Biosphere and ecosystem\", \"Marine\"], \"ARISE\": [\"Atmospheric\"], \"AnaEE\": [\"Biosphere and ecosystem\"], \"CETAF\": [\"Biosphere and ecosystem\"], \"EMBRC\": [\"Marine\", \"Biosphere and ecosystem\"], \"EUFAR\": [\"Atmospheric\"], \"IAGOS\": [\"Atmospheric\"], \"ACTRIS\": [\"Atmospheric\"], \"DiSSCo\": [\"Biosphere and ecosystem\"], \"HEMERA\": [\"Atmospheric\"], \"IS-ENES\": [\"Atmospheric\", \"Biosphere and ecosystem\", \"Marine\"], \"AQUACOSM\": [\"Marine\", \"Biosphere and ecosystem\"], \"EMPHASIS\": [\"Biosphere and ecosystem\"], \"EuroGOOS\": [\"Marine\", \"Atmospheric\", \"Biosphere and ecosystem\"], \"GROOM-RI\": [\"Marine\"], \"INTERACT\": [\"Biosphere and ecosystem\"], \"eLTER RI\": [\"Biosphere and ecosystem\", \"Marine\"], \"EISCAT 3D\": [\"Atmospheric\"], \"EUROCHAMP\": [\"Atmospheric\"], \"JERICO-RI\": [\"Marine\"], \"LifeWatch\": [\"Biosphere and ecosystem\", \"Marine\"], \"SeaDataNet\": [\"Marine\"], \"DANUBIUS-RI\": [\"Biosphere and ecosystem\", \"Marine\"], \"EUROFLEETS+\": [\"Marine\"], \"Euro-Argo ERIC\": [\"Marine\"]}, \"RI_synonyms.json\": {\"ICOS\": [\"ICOS\"], \"AnaEE\": [\"AnaEE\"], \"DiSSCo\": [\"DiSSCo\", \"DigitalSpecimen\"], \"LifeWatch\": [\"LifeWatch\"], \"SeaDataNet\": [\"SeaDataNet\", \"SDN\"]}, \"metadata_schema.json\": {\"repo\": {\"datatype\": \"DefinedTerm\", \"constraint\": \"Rule\", \"description\": \"The name of the research infrastructure\", \"suggested sources\": [\"--LanguageModelExtraction--\"]}, \"size\": {\"datatype\": \"DefinedTerm/QuantitativeValue/SizeSpecification/Text\", \"constraint\": \"Rule\", \"description\": \"A standardized size of a product or creative work, specified either through a simple textual string (for example \'XL\', \'32Wx34L\'), a QuantitativeValue with a unitCode, or a comprehensive and structured SizeSpecification; in other cases, the width, height, depth and weight properties may be more applicable.\", \"suggested sources\": [\"size\"]}, \"title\": {\"datatype\": \"Text\", \"constraint\": \"Rule\", \"description\": \"The name of the item.\", \"suggested sources\": [\"fileName\", \"Data set name\", \"gmd:fileIdentifier\", \"gco:CharacterString\", \"scientificName\", \"gbif:acceptedScientificName\", \"dwc:datasetName\", \"gbif:genericName\"]}, \"rights\": {\"datatype\": \"Text/URL\", \"constraint\": \"Rule\", \"description\": \"A statement that concerns all rights not addressed with dcterms,license or dcterms,accessRights, such as copyright statements.\", \"suggested sources\": [\"accessRights\", \"accessUrl\"]}, \"source\": {\"datatype\": \"URL\", \"constraint\": \"Rule\", \"description\": \"URL of the item.\", \"suggested sources\": [\"gmd:identifier\", \"gco:CharacterString\", \"accessUrl\", \"physicalSpecimenId\"]}, \"contact\": {\"datatype\": \"Organization/Person\", \"constraint\": \"len(5)\", \"description\": \"identification of, and means of communicating with, person(s) and organisation(s) with responsibility for maintaining the resource\", \"suggested sources\": [\"contact\", \"Point of contact\", \"gmd:CI_ResponsibleParty\", \"gco:CharacterString\", \"responsibleOrganization\", \"name\", \"uri\", \"website\"]}, \"creator\": {\"datatype\": \"Organization/Person\", \"constraint\": \"len(5)\", \"description\": \"The entity responsible for producing the resource.\", \"suggested sources\": [\"creator\", \"name\", \"label\", \"uri\", \"recordedBy\"]}, \"version\": {\"datatype\": \"Number/Text\", \"constraint\": \"len(1)\", \"description\": \"The version of the dataset embodied by a specified resource.\", \"suggested sources\": [\"gmd:metadataStandardVersion\", \"gco:CharacterString\", \"bibliographic_citation\"]}, \"keywords\": {\"datatype\": \"Text/URL\", \"constraint\": \"array(comma)\", \"description\": \"Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.\", \"suggested sources\": [\"Parameter groups\", \"gmd:keyword\", \"gco:CharacterString\", \"keywords\", \"label\", \"synonyms\", \"name\", \"rank\", \"genus\", \"species\"]}, \"language\": {\"datatype\": \"Language/Text\", \"constraint\": \"len(2)\", \"description\": \"The language of the content or performance or used in an action. Please use one of the language codes from the IETF BCP 47 standard. See also availableLanguage. Supersedes language.\", \"suggested sources\": [\"inLanguage\", \"countryCode\", \"lang\", \"gmd:LanguageCode\", \"gmd:language\", \"@codeListValue\"]}, \"publisher\": {\"datatype\": \"Organization/Person\", \"constraint\": \"len(2)\", \"description\": \"The publisher of the dataset.\", \"suggested sources\": [\"Data originator\", \"distributor\", \"gmd:organisationName\", \"gco:CharacterString\", \"station\", \"org\", \"name\", \"label\", \"submitter\", \"name\"]}, \"discipline\": {\"datatype\": \"Text\", \"constraint\": \"len(5)\", \"description\": \"The research discipline(s) the resource can be categorized in.\", \"suggested sources\": [\"Discipline\", \"gmd:topicCategory\", \"gmd:MD_TopicCategoryCode\", \"dwc:class\", \"classification\", \"name\", \"url\"]}, \"identifier\": {\"datatype\": \"PropertyValue/Text\", \"constraint\": \"len(15)\", \"description\": \"unique identifier for this metadata record\", \"suggested sources\": [\"ISBN\", \"GTIN\", \"UUID\", \"URI\", \"URL\", \"id\", \"metadataIdentifier\", \"gmd:fileIdentifier\", \"gco:CharacterString\", \"pid\"]}, \"instrument\": {\"datatype\": \"Text/URL\", \"constraint\": \"Rule\", \"description\": \"A technique or technology used in a Dataset (or DataDownload, DataCatalog), corresponding to the method used for measuring the corresponding variable(s) (described using variableMeasured).\", \"suggested sources\": [\"Instrument/gear type\", \"instrument\", \"label\", \"uri\"]}, \"contributor\": {\"datatype\": \"Organization/Person\", \"constraint\": \"Rule\", \"description\": \"A secondary contributor to the dataset or Event.\", \"suggested sources\": [\"gmd:organisationName\", \"gco:CharacterString\"]}, \"description\": {\"datatype\": \"Text\", \"constraint\": \"len(15)\", \"description\": \"A brief description of a set of distribution options.\", \"suggested sources\": [\"Discovery parameter\", \"comments\"]}, \"potential_topics\": {\"datatype\": \"DefinedTerm\", \"constraint\": \"Rule\", \"description\": \"The potential topics of the dataset\", \"suggested sources\": [\"--LanguageModelExtraction--\"]}, \"publication_year\": {\"datatype\": \"Date/DateTime\", \"constraint\": \"Rule\", \"description\": \"Date of first broadcast/publication.\", \"suggested sources\": [\"gmd:dateStamp\", \"gco:DateTime\", \"dateTime\", \"gbif:lastParsed\"]}, \"spatial_coverage\": {\"datatype\": \"Place\", \"constraint\": \"lng/lat\", \"description\": \"The spatialCoverage of a dataset indicates the place(s) which are the focus of the content. It is a subproperty of contentLocation intended primarily for more technical and detailed materials. For example with a Dataset, it indicates areas that the dataset describes, a dataset of New York weather would have spatialCoverage which was the place, the state of New York.\", \"suggested sources\": [\"gmd:geographicElement\", \"gco:Decimal\", \"coverageGeo\", \"coverage\", \"coordinates\", \"Sea regions\"]}, \"modification_date\": {\"datatype\": \"DateTime\", \"constraint\": \"len(4)\", \"description\": \"Most recent date on which the item was changed, updated or modified.\", \"suggested sources\": [\"CDI-record last update\", \"dateModified\", \"dcterms:modified\"]}, \"temporal_coverage\": {\"datatype\": \"DateTime/Text\", \"constraint\": \"len(4)\", \"description\": \"The temporal period that the dataset covers.\", \"suggested sources\": [\"gmd:temporalElement\", \"temporalCoverageDisplay\"]}, \"related_identifier\": {\"datatype\": \"Text\", \"constraint\": \"Rule\", \"description\": \"A resource with an unspecified relationship to the cataloged item.\", \"suggested sources\": [\"sample\"]}, \"essential_variables\": {\"datatype\": \"DefinedTerm\", \"constraint\": \"array(comma)\", \"description\": \"EssentialVariables used to list relevant essential variables. Multiple entries in an essential variables list are typically delimited by commas.\", \"suggested sources\": [\"--LanguageModelExtraction--\"]}}, \"domain_vocabularies.json\": {\"Marine\": [\"sea\", \"ocean\", \"marine\", \"oceanography\", \"sonar\", \"salinity\", \"gyre\", \"upwelling\", \"density\", \"wave\", \"wavelength\", \"tide\", \"tidal\", \"plankton\", \"seamount\"], \"Atmospheric\": [\"atmosphere\", \"climate\", \"air\", \"pressure\", \"wind\", \"precipitation\", \"ozone\", \"radiation\", \"sphere\", \"stream\", \"gas\", \"greenhouse\", \"radiation\", \"humidity\", \"temperature\", \"velocity\", \"smog\", \"atmospheric\", \"pressure\"], \"Solid Earth\": [\"geodiversity\", \"geo\", \"soil\", \"core\", \"crack\", \"crater\", \"crust\", \"deposit\", \"erosion\", \"fossil\", \"glacier\", \"global\", \"globe\", \"iceberg\", \"lava\", \"stone\", \"volcano\", \"mountain\", \"rock\"], \"Biosphere and ecosystem\": [\"biodiversity\", \"species\", \"diversity\", \"gene\", \"ecotourism\", \"extinct\", \"organism\", \"genetic\", \"habitat\", \"animal\", \"fungi\", \"ecosystem\", \"disease\", \"biological\", \"habitat\", \"food\", \"shelter\"]}, \"domain_essential_variables.json\": {\"Marine\": [\"sea\", \"ocean\", \"marine\", \"oceanography\", \"sonar\", \"salinity\", \"gyre\", \"upwelling\", \"density\", \"wave\", \"wavelength\", \"tide\", \"tidal\", \"plankton\", \"seamount\"], \"Atmospheric\": [\"atmosphere\", \"climate\", \"air\", \"pressure\", \"wind\", \"precipitation\", \"ozone\", \"radiation\", \"sphere\", \"stream\", \"gas\", \"greenhouse\", \"radiation\", \"humidity\", \"temperature\", \"velocity\", \"smog\", \"atmospheric\", \"pressure\"], \"Solid Earth\": [\"geodiversity\", \"geo\", \"soil\", \"core\", \"crack\", \"crater\", \"crust\", \"deposit\", \"erosion\", \"fossil\", \"glacier\", \"global\", \"globe\", \"iceberg\", \"lava\", \"stone\", \"volcano\", \"mountain\", \"rock\"], \"Biosphere and ecosystem\": [\"biodiversity\", \"species\", \"diversity\", \"gene\", \"ecotourism\", \"extinct\", \"organism\", \"genetic\", \"habitat\", \"animal\", \"fungi\", \"ecosystem\", \"disease\", \"biological\", \"habitat\", \"food\", \"shelter\"]}}, \"seadatanet_cdi\": {\"parameters\": {\"max_records\": \"None\", \"document_extension\": \".json\", \"documents_list_url\": \"https://cdi.seadatanet.org/sparql/sparql\"}}, \"seadatanet_edmed\": {\"parameters\": {\"max_records\": \"None\", \"document_extension\": \".html\", \"documents_list_url\": \"https://edmed.seadatanet.org/sparql/sparql\"}}}, \"webpage\": {\"json\": {\"ResearchInfrastructures.json\": {\"anaee.eu\": {\"id\": 4, \"url\": \"https://www.anaee.eu/\", \"title\": \"Analysis and Experimentation on Ecosystems\", \"domain\": \"Terrestrial ecosystem / Biodiversity\", \"acronym\": \"AnaEE\", \"domain_names\": [\"anaee.eu\"]}, \"actris.eu\": {\"id\": 12345, \"url\": \"https://www.actris.eu/\", \"title\": \"The Aerosol, Clouds and Trace Gases Research Infrastructure\", \"domain\": \"Atmospheric\", \"acronym\": \"ACTRIS\", \"domain_names\": [\"actris.eu\", \"actris.nilu.no\", \"actris-ecac.eu\"]}}}, \"parameters\": {\"max_urls\": 1}}, \"notebook\": {\"parameters\": {\"offset\": 0, \"max_records\": 100}}}','2024-07-05 01:43:42.849007','ICOS01'),(2,'config','{\"api\": {\"json\": {}, \"parameters\": {}}, \"dataset\": {\"icos\": {\"parameters\": {\"max_records\": \"None\", \"document_extension\": \".html\", \"documents_list_url\": \"https://meta.icos-cp.eu/sparql\"}}, \"json\": {\"RI_domains.json\": {\"EMSO\": [\"Marine\", \"Solid Earth\"], \"EPOS\": [\"Solid Earth\"], \"ICOS\": [\"Atmospheric\", \"Biosphere and ecosystem\", \"Marine\"], \"SIOS\": [\"Atmospheric\", \"Biosphere and ecosystem\", \"Marine\"], \"ARISE\": [\"Atmospheric\"], \"AnaEE\": [\"Biosphere and ecosystem\"], \"CETAF\": [\"Biosphere and ecosystem\"], \"EMBRC\": [\"Marine\", \"Biosphere and ecosystem\"], \"EUFAR\": [\"Atmospheric\"], \"IAGOS\": [\"Atmospheric\"], \"ACTRIS\": [\"Atmospheric\"], \"DiSSCo\": [\"Biosphere and ecosystem\"], \"HEMERA\": [\"Atmospheric\"], \"IS-ENES\": [\"Atmospheric\", \"Biosphere and ecosystem\", \"Marine\"], \"AQUACOSM\": [\"Marine\", \"Biosphere and ecosystem\"], \"EMPHASIS\": [\"Biosphere and ecosystem\"], \"EuroGOOS\": [\"Marine\", \"Atmospheric\", \"Biosphere and ecosystem\"], \"GROOM-RI\": [\"Marine\"], \"INTERACT\": [\"Biosphere and ecosystem\"], \"eLTER RI\": [\"Biosphere and ecosystem\", \"Marine\"], \"EISCAT 3D\": [\"Atmospheric\"], \"EUROCHAMP\": [\"Atmospheric\"], \"JERICO-RI\": [\"Marine\"], \"LifeWatch\": [\"Biosphere and ecosystem\", \"Marine\"], \"SeaDataNet\": [\"Marine\"], \"DANUBIUS-RI\": [\"Biosphere and ecosystem\", \"Marine\"], \"EUROFLEETS+\": [\"Marine\"], \"Euro-Argo ERIC\": [\"Marine\"]}, \"RI_synonyms.json\": {\"ICOS\": [\"ICOS\"], \"AnaEE\": [\"AnaEE\"], \"DiSSCo\": [\"DiSSCo\", \"DigitalSpecimen\"], \"LifeWatch\": [\"LifeWatch\"], \"SeaDataNet\": [\"SeaDataNet\", \"SDN\"]}, \"metadata_schema.json\": {\"repo\": {\"datatype\": \"DefinedTerm\", \"constraint\": \"Rule\", \"description\": \"The name of the research infrastructure\", \"suggested sources\": [\"--LanguageModelExtraction--\"]}, \"size\": {\"datatype\": \"DefinedTerm/QuantitativeValue/SizeSpecification/Text\", \"constraint\": \"Rule\", \"description\": \"A standardized size of a product or creative work, specified either through a simple textual string (for example \'XL\', \'32Wx34L\'), a QuantitativeValue with a unitCode, or a comprehensive and structured SizeSpecification; in other cases, the width, height, depth and weight properties may be more applicable.\", \"suggested sources\": [\"size\"]}, \"title\": {\"datatype\": \"Text\", \"constraint\": \"Rule\", \"description\": \"The name of the item.\", \"suggested sources\": [\"fileName\", \"Data set name\", \"gmd:fileIdentifier\", \"gco:CharacterString\", \"scientificName\", \"gbif:acceptedScientificName\", \"dwc:datasetName\", \"gbif:genericName\"]}, \"rights\": {\"datatype\": \"Text/URL\", \"constraint\": \"Rule\", \"description\": \"A statement that concerns all rights not addressed with dcterms,license or dcterms,accessRights, such as copyright statements.\", \"suggested sources\": [\"accessRights\", \"accessUrl\"]}, \"source\": {\"datatype\": \"URL\", \"constraint\": \"Rule\", \"description\": \"URL of the item.\", \"suggested sources\": [\"gmd:identifier\", \"gco:CharacterString\", \"accessUrl\", \"physicalSpecimenId\"]}, \"contact\": {\"datatype\": \"Organization/Person\", \"constraint\": \"len(5)\", \"description\": \"identification of, and means of communicating with, person(s) and organisation(s) with responsibility for maintaining the resource\", \"suggested sources\": [\"contact\", \"Point of contact\", \"gmd:CI_ResponsibleParty\", \"gco:CharacterString\", \"responsibleOrganization\", \"name\", \"uri\", \"website\"]}, \"creator\": {\"datatype\": \"Organization/Person\", \"constraint\": \"len(5)\", \"description\": \"The entity responsible for producing the resource.\", \"suggested sources\": [\"creator\", \"name\", \"label\", \"uri\", \"recordedBy\"]}, \"version\": {\"datatype\": \"Number/Text\", \"constraint\": \"len(1)\", \"description\": \"The version of the dataset embodied by a specified resource.\", \"suggested sources\": [\"gmd:metadataStandardVersion\", \"gco:CharacterString\", \"bibliographic_citation\"]}, \"keywords\": {\"datatype\": \"Text/URL\", \"constraint\": \"array(comma)\", \"description\": \"Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.\", \"suggested sources\": [\"Parameter groups\", \"gmd:keyword\", \"gco:CharacterString\", \"keywords\", \"label\", \"synonyms\", \"name\", \"rank\", \"genus\", \"species\"]}, \"language\": {\"datatype\": \"Language/Text\", \"constraint\": \"len(2)\", \"description\": \"The language of the content or performance or used in an action. Please use one of the language codes from the IETF BCP 47 standard. See also availableLanguage. Supersedes language.\", \"suggested sources\": [\"inLanguage\", \"countryCode\", \"lang\", \"gmd:LanguageCode\", \"gmd:language\", \"@codeListValue\"]}, \"publisher\": {\"datatype\": \"Organization/Person\", \"constraint\": \"len(2)\", \"description\": \"The publisher of the dataset.\", \"suggested sources\": [\"Data originator\", \"distributor\", \"gmd:organisationName\", \"gco:CharacterString\", \"station\", \"org\", \"name\", \"label\", \"submitter\", \"name\"]}, \"discipline\": {\"datatype\": \"Text\", \"constraint\": \"len(5)\", \"description\": \"The research discipline(s) the resource can be categorized in.\", \"suggested sources\": [\"Discipline\", \"gmd:topicCategory\", \"gmd:MD_TopicCategoryCode\", \"dwc:class\", \"classification\", \"name\", \"url\"]}, \"identifier\": {\"datatype\": \"PropertyValue/Text\", \"constraint\": \"len(15)\", \"description\": \"unique identifier for this metadata record\", \"suggested sources\": [\"ISBN\", \"GTIN\", \"UUID\", \"URI\", \"URL\", \"id\", \"metadataIdentifier\", \"gmd:fileIdentifier\", \"gco:CharacterString\", \"pid\"]}, \"instrument\": {\"datatype\": \"Text/URL\", \"constraint\": \"Rule\", \"description\": \"A technique or technology used in a Dataset (or DataDownload, DataCatalog), corresponding to the method used for measuring the corresponding variable(s) (described using variableMeasured).\", \"suggested sources\": [\"Instrument/gear type\", \"instrument\", \"label\", \"uri\"]}, \"contributor\": {\"datatype\": \"Organization/Person\", \"constraint\": \"Rule\", \"description\": \"A secondary contributor to the dataset or Event.\", \"suggested sources\": [\"gmd:organisationName\", \"gco:CharacterString\"]}, \"description\": {\"datatype\": \"Text\", \"constraint\": \"len(15)\", \"description\": \"A brief description of a set of distribution options.\", \"suggested sources\": [\"Discovery parameter\", \"comments\"]}, \"potential_topics\": {\"datatype\": \"DefinedTerm\", \"constraint\": \"Rule\", \"description\": \"The potential topics of the dataset\", \"suggested sources\": [\"--LanguageModelExtraction--\"]}, \"publication_year\": {\"datatype\": \"Date/DateTime\", \"constraint\": \"Rule\", \"description\": \"Date of first broadcast/publication.\", \"suggested sources\": [\"gmd:dateStamp\", \"gco:DateTime\", \"dateTime\", \"gbif:lastParsed\"]}, \"spatial_coverage\": {\"datatype\": \"Place\", \"constraint\": \"lng/lat\", \"description\": \"The spatialCoverage of a dataset indicates the place(s) which are the focus of the content. It is a subproperty of contentLocation intended primarily for more technical and detailed materials. For example with a Dataset, it indicates areas that the dataset describes, a dataset of New York weather would have spatialCoverage which was the place, the state of New York.\", \"suggested sources\": [\"gmd:geographicElement\", \"gco:Decimal\", \"coverageGeo\", \"coverage\", \"coordinates\", \"Sea regions\"]}, \"modification_date\": {\"datatype\": \"DateTime\", \"constraint\": \"len(4)\", \"description\": \"Most recent date on which the item was changed, updated or modified.\", \"suggested sources\": [\"CDI-record last update\", \"dateModified\", \"dcterms:modified\"]}, \"temporal_coverage\": {\"datatype\": \"DateTime/Text\", \"constraint\": \"len(4)\", \"description\": \"The temporal period that the dataset covers.\", \"suggested sources\": [\"gmd:temporalElement\", \"temporalCoverageDisplay\"]}, \"related_identifier\": {\"datatype\": \"Text\", \"constraint\": \"Rule\", \"description\": \"A resource with an unspecified relationship to the cataloged item.\", \"suggested sources\": [\"sample\"]}, \"essential_variables\": {\"datatype\": \"DefinedTerm\", \"constraint\": \"array(comma)\", \"description\": \"EssentialVariables used to list relevant essential variables. Multiple entries in an essential variables list are typically delimited by commas.\", \"suggested sources\": [\"--LanguageModelExtraction--\"]}}, \"domain_vocabularies.json\": {\"Marine\": [\"sea\", \"ocean\", \"marine\", \"oceanography\", \"sonar\", \"salinity\", \"gyre\", \"upwelling\", \"density\", \"wave\", \"wavelength\", \"tide\", \"tidal\", \"plankton\", \"seamount\"], \"Atmospheric\": [\"atmosphere\", \"climate\", \"air\", \"pressure\", \"wind\", \"precipitation\", \"ozone\", \"radiation\", \"sphere\", \"stream\", \"gas\", \"greenhouse\", \"radiation\", \"humidity\", \"temperature\", \"velocity\", \"smog\", \"atmospheric\", \"pressure\"], \"Solid Earth\": [\"geodiversity\", \"geo\", \"soil\", \"core\", \"crack\", \"crater\", \"crust\", \"deposit\", \"erosion\", \"fossil\", \"glacier\", \"global\", \"globe\", \"iceberg\", \"lava\", \"stone\", \"volcano\", \"mountain\", \"rock\"], \"Biosphere and ecosystem\": [\"biodiversity\", \"species\", \"diversity\", \"gene\", \"ecotourism\", \"extinct\", \"organism\", \"genetic\", \"habitat\", \"animal\", \"fungi\", \"ecosystem\", \"disease\", \"biological\", \"habitat\", \"food\", \"shelter\"]}, \"domain_essential_variables.json\": {\"Marine\": [\"sea\", \"ocean\", \"marine\", \"oceanography\", \"sonar\", \"salinity\", \"gyre\", \"upwelling\", \"density\", \"wave\", \"wavelength\", \"tide\", \"tidal\", \"plankton\", \"seamount\"], \"Atmospheric\": [\"atmosphere\", \"climate\", \"air\", \"pressure\", \"wind\", \"precipitation\", \"ozone\", \"radiation\", \"sphere\", \"stream\", \"gas\", \"greenhouse\", \"radiation\", \"humidity\", \"temperature\", \"velocity\", \"smog\", \"atmospheric\", \"pressure\"], \"Solid Earth\": [\"geodiversity\", \"geo\", \"soil\", \"core\", \"crack\", \"crater\", \"crust\", \"deposit\", \"erosion\", \"fossil\", \"glacier\", \"global\", \"globe\", \"iceberg\", \"lava\", \"stone\", \"volcano\", \"mountain\", \"rock\"], \"Biosphere and ecosystem\": [\"biodiversity\", \"species\", \"diversity\", \"gene\", \"ecotourism\", \"extinct\", \"organism\", \"genetic\", \"habitat\", \"animal\", \"fungi\", \"ecosystem\", \"disease\", \"biological\", \"habitat\", \"food\", \"shelter\"]}}, \"seadatanet_cdi\": {\"parameters\": {\"max_records\": \"None\", \"document_extension\": \".json\", \"documents_list_url\": \"https://cdi.seadatanet.org/sparql/sparql\"}}, \"seadatanet_edmed\": {\"parameters\": {\"max_records\": \"None\", \"document_extension\": \".html\", \"documents_list_url\": \"https://edmed.seadatanet.org/sparql/sparql\"}}}, \"webpage\": {\"json\": {\"ResearchInfrastructures.json\": {\"anaee.eu\": {\"id\": 4, \"url\": \"https://www.anaee.eu/\", \"title\": \"Analysis and Experimentation on Ecosystems\", \"domain\": \"Terrestrial ecosystem / Biodiversity\", \"acronym\": \"AnaEE\", \"domain_names\": [\"anaee.eu\"]}, \"actris.eu\": {\"id\": 12345, \"url\": \"https://www.actris.eu/\", \"title\": \"The Aerosol, Clouds and Trace Gases Research Infrastructure\", \"domain\": \"Atmospheric\", \"acronym\": \"ACTRIS\", \"domain_names\": [\"actris.eu\", \"actris.nilu.no\", \"actris-ecac.eu\"]}}}, \"parameters\": {\"max_urls\": 1}}, \"notebook\": {\"parameters\": {\"offset\": 0, \"max_records\": 100}}}','2024-07-16 10:40:49.219860','SeaDataNet01');
/*!40000 ALTER TABLE `app01_jsonfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_msuser`
--

DROP TABLE IF EXISTS `app01_msuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_msuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` bigint NOT NULL,
  `organization` varchar(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_msuser`
--

LOCK TABLES `app01_msuser` WRITE;
/*!40000 ALTER TABLE `app01_msuser` DISABLE KEYS */;
INSERT INTO `app01_msuser` VALUES (1,'尝试','b59c67bf196a4758191e42f76670ceba','shijiacheng1234@163.com',188,'RI',1,0,0,NULL),(6,'SIOS','SIOS','111@111.com',111,'RI',1,0,0,NULL),(8,'aaaaaa','pbkdf2_sha256$260000$PuUlB521912wjZBmKN4jbH$geVqeheFSU5OO9zwMdWjKNMYWl8FOMutafVZQ766+J8=','aaaaa',111111,'ICOS',1,0,0,'2024-06-18 15:35:16.647164'),(9,'ICOS01','pbkdf2_sha256$260000$usLB6auo7p50iLhZm3RRb8$fAKFJLtgoPg9c+BpJUHUl6Q15oQAf2jhRqp/uTgKsBQ=','',111,'ICOS',1,0,0,'2024-07-16 11:58:08.427339'),(11,'SeaDataNet01','pbkdf2_sha256$260000$xIhHLOzBLoyUuNkwgYGR3V$sjFOb6zgDeVpqWxHyr6jAhEeVphUc35KrhHklVgLH2g=','111@111.com',111,'SeaDataNet',1,0,0,'2024-07-16 10:15:48.015640');
/*!40000 ALTER TABLE `app01_msuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_msuser_groups`
--

DROP TABLE IF EXISTS `app01_msuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_msuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `msuser_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app01_msuser_groups_msuser_id_group_id_b9481e95_uniq` (`msuser_id`,`group_id`),
  KEY `app01_msuser_groups_group_id_81a9def2_fk_auth_group_id` (`group_id`),
  CONSTRAINT `app01_msuser_groups_group_id_81a9def2_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `app01_msuser_groups_msuser_id_871de952_fk_app01_msuser_id` FOREIGN KEY (`msuser_id`) REFERENCES `app01_msuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_msuser_groups`
--

LOCK TABLES `app01_msuser_groups` WRITE;
/*!40000 ALTER TABLE `app01_msuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `app01_msuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_msuser_user_permissions`
--

DROP TABLE IF EXISTS `app01_msuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_msuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `msuser_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app01_msuser_user_permis_msuser_id_permission_id_2ffac1b6_uniq` (`msuser_id`,`permission_id`),
  KEY `app01_msuser_user_pe_permission_id_9993c87c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `app01_msuser_user_pe_msuser_id_eb68ecdd_fk_app01_msu` FOREIGN KEY (`msuser_id`) REFERENCES `app01_msuser` (`id`),
  CONSTRAINT `app01_msuser_user_pe_permission_id_9993c87c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_msuser_user_permissions`
--

LOCK TABLES `app01_msuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `app01_msuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `app01_msuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_runningtask`
--

DROP TABLE IF EXISTS `app01_runningtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_runningtask` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `contenttype` varchar(32) NOT NULL,
  `org` varchar(32) NOT NULL,
  `repo` varchar(32) DEFAULT NULL,
  `start_time` datetime(6) NOT NULL,
  `status` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_runningtask`
--

LOCK TABLES `app01_runningtask` WRITE;
/*!40000 ALTER TABLE `app01_runningtask` DISABLE KEYS */;
INSERT INTO `app01_runningtask` VALUES (2,'aaa','api','icos',NULL,'2024-06-19 18:43:04.411372','running');
/*!40000 ALTER TABLE `app01_runningtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add lms user',7,'add_lmsuser'),(26,'Can change lms user',7,'change_lmsuser'),(27,'Can delete lms user',7,'delete_lmsuser'),(28,'Can view lms user',7,'view_lmsuser'),(29,'Can add publisher',8,'add_publisher'),(30,'Can change publisher',8,'change_publisher'),(31,'Can delete publisher',8,'delete_publisher'),(32,'Can view publisher',8,'view_publisher'),(33,'Can add book',9,'add_book'),(34,'Can change book',9,'change_book'),(35,'Can delete book',9,'delete_book'),(36,'Can view book',9,'view_book'),(37,'Can add author',10,'add_author'),(38,'Can change author',10,'change_author'),(39,'Can delete author',10,'delete_author'),(40,'Can view author',10,'view_author'),(41,'Can add notification',11,'add_notification'),(42,'Can change notification',11,'change_notification'),(43,'Can delete notification',11,'delete_notification'),(44,'Can view notification',11,'view_notification'),(45,'Can add ms user',7,'add_msuser'),(46,'Can change ms user',7,'change_msuser'),(47,'Can delete ms user',7,'delete_msuser'),(48,'Can view ms user',7,'view_msuser'),(49,'Can add django job',12,'add_djangojob'),(50,'Can change django job',12,'change_djangojob'),(51,'Can delete django job',12,'delete_djangojob'),(52,'Can view django job',12,'view_djangojob'),(53,'Can add django job execution',13,'add_djangojobexecution'),(54,'Can change django job execution',13,'change_djangojobexecution'),(55,'Can delete django job execution',13,'delete_djangojobexecution'),(56,'Can view django job execution',13,'view_djangojobexecution'),(57,'Can add json file',14,'add_jsonfile'),(58,'Can change json file',14,'change_jsonfile'),(59,'Can delete json file',14,'delete_jsonfile'),(60,'Can view json file',14,'view_jsonfile'),(61,'Can add csv file',15,'add_csvfile'),(62,'Can change csv file',15,'change_csvfile'),(63,'Can delete csv file',15,'delete_csvfile'),(64,'Can view csv file',15,'view_csvfile'),(65,'Can add dashboard',16,'add_dashboard'),(66,'Can change dashboard',16,'change_dashboard'),(67,'Can delete dashboard',16,'delete_dashboard'),(68,'Can view dashboard',16,'view_dashboard'),(69,'Can add running task',17,'add_runningtask'),(70,'Can change running task',17,'change_runningtask'),(71,'Can delete running task',17,'delete_runningtask'),(72,'Can view running task',17,'view_runningtask');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_apscheduler_djangojob`
--

DROP TABLE IF EXISTS `django_apscheduler_djangojob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_apscheduler_djangojob` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `next_run_time` datetime(6) DEFAULT NULL,
  `job_state` longblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `django_apscheduler_djangojob_next_run_time_2f022619` (`next_run_time`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_apscheduler_djangojob`
--

LOCK TABLES `django_apscheduler_djangojob` WRITE;
/*!40000 ALTER TABLE `django_apscheduler_djangojob` DISABLE KEYS */;
INSERT INTO `django_apscheduler_djangojob` VALUES (71,'SeaDataNet','2024-06-19 18:43:04.411372',_binary '���\0\0\0\0\0\0}�(�version�K�id��\nSeaDataNet��func��app01.tasks:jobindex��trigger��apscheduler.triggers.interval��IntervalTrigger���)��}�(hK�timezone��pytz��_UTC���)R��\nstart_date��datetime��datetime���C\n\�+F\�h��R��end_date�N�interval�h�	timedelta���K\0M K\0��R��jitter�Nub�executor��default��args��webpage�hN���kwargs�}��name��jobindex��misfire_grace_time�K�coalesce���\rmax_instances�K�\rnext_run_time�hC\n\�+F\�h��R�u.'),(73,'ICOS','2024-06-19 19:50:17.686109',_binary '��\�\0\0\0\0\0\0}�(�version�K�id��ICOS��func��app01.tasks:jobindex��trigger��apscheduler.triggers.interval��IntervalTrigger���)��}�(hK�timezone��pytz��_UTC���)R��\nstart_date��datetime��datetime���C\n\�2\nx�h��R��end_date�N�interval�h�	timedelta���K\0M K\0��R��jitter�Nub�executor��default��args��notebook�h�Kaggle����kwargs�}��name��jobindex��misfire_grace_time�K�coalesce���\rmax_instances�K�\rnext_run_time�hC\n\�2\nx�h��R�u.');
/*!40000 ALTER TABLE `django_apscheduler_djangojob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_apscheduler_djangojobexecution`
--

DROP TABLE IF EXISTS `django_apscheduler_djangojobexecution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_apscheduler_djangojobexecution` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `run_time` datetime(6) NOT NULL,
  `duration` decimal(15,2) DEFAULT NULL,
  `started` decimal(15,2) DEFAULT NULL,
  `finished` decimal(15,2) DEFAULT NULL,
  `exception` varchar(1000) DEFAULT NULL,
  `traceback` longtext,
  `job_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_apscheduler_djangojobexecution_run_time_16edd96b` (`run_time`),
  KEY `django_apscheduler_djangojobexecution_job_id_daf5090a_fk` (`job_id`),
  CONSTRAINT `django_apscheduler_djangojobexecution_job_id_daf5090a_fk` FOREIGN KEY (`job_id`) REFERENCES `django_apscheduler_djangojob` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_apscheduler_djangojobexecution`
--

LOCK TABLES `django_apscheduler_djangojobexecution` WRITE;
/*!40000 ALTER TABLE `django_apscheduler_djangojobexecution` DISABLE KEYS */;
INSERT INTO `django_apscheduler_djangojobexecution` VALUES (64,'Executed','2024-06-17 14:43:04.411372',-0.05,1718639408.23,1718639408.18,NULL,NULL,71),(67,'Executed','2024-06-17 16:43:04.411372',-0.02,1718643067.27,1718643067.25,NULL,NULL,71),(93,'Executed','2024-06-17 18:43:04.411372',0.01,1718649784.46,1718649784.47,NULL,NULL,71),(172,'Executed','2024-06-17 20:43:04.411372',-0.13,1718656985.27,1718656985.14,NULL,NULL,71),(175,'Executed','2024-06-17 22:43:04.411372',-0.07,1718664184.57,1718664184.50,NULL,NULL,71),(177,'Executed','2024-06-18 12:43:04.411372',-0.03,1718718304.40,1718718304.37,NULL,NULL,71),(178,'Executed','2024-06-19 16:43:04.411372',-0.05,1718819417.67,1718819417.62,NULL,NULL,71);
/*!40000 ALTER TABLE `django_apscheduler_djangojobexecution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'app01','author'),(9,'app01','book'),(15,'app01','csvfile'),(16,'app01','dashboard'),(14,'app01','jsonfile'),(7,'app01','msuser'),(11,'app01','notification'),(8,'app01','publisher'),(17,'app01','runningtask'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'django_apscheduler','djangojob'),(13,'django_apscheduler','djangojobexecution'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-31 16:41:00.142037'),(2,'auth','0001_initial','2024-05-31 16:41:00.321692'),(3,'admin','0001_initial','2024-05-31 16:41:00.381209'),(4,'admin','0002_logentry_remove_auto_add','2024-05-31 16:41:00.387535'),(5,'admin','0003_logentry_add_action_flag_choices','2024-05-31 16:41:00.394253'),(6,'app01','0001_initial','2024-05-31 16:41:00.457572'),(7,'contenttypes','0002_remove_content_type_name','2024-05-31 16:41:00.479897'),(8,'auth','0002_alter_permission_name_max_length','2024-05-31 16:41:00.493927'),(9,'auth','0003_alter_user_email_max_length','2024-05-31 16:41:00.505812'),(10,'auth','0004_alter_user_username_opts','2024-05-31 16:41:00.510279'),(11,'auth','0005_alter_user_last_login_null','2024-05-31 16:41:00.523565'),(12,'auth','0006_require_contenttypes_0002','2024-05-31 16:41:00.524732'),(13,'auth','0007_alter_validators_add_error_messages','2024-05-31 16:41:00.529457'),(14,'auth','0008_alter_user_username_max_length','2024-05-31 16:41:00.546348'),(15,'auth','0009_alter_user_last_name_max_length','2024-05-31 16:41:00.561840'),(16,'auth','0010_alter_group_name_max_length','2024-05-31 16:41:00.569890'),(17,'auth','0011_update_proxy_permissions','2024-05-31 16:41:00.575046'),(18,'auth','0012_alter_user_first_name_max_length','2024-05-31 16:41:00.592869'),(19,'sessions','0001_initial','2024-05-31 16:41:00.603769'),(20,'app01','0002_auto_20240531_1647','2024-05-31 16:47:30.741597'),(21,'app01','0003_alter_book_id','2024-05-31 16:50:46.763560'),(22,'app01','0004_auto_20240531_1731','2024-05-31 17:31:27.029808'),(23,'django_apscheduler','0001_initial','2024-06-05 18:01:37.532551'),(24,'django_apscheduler','0002_auto_20180412_0758','2024-06-05 18:01:37.557414'),(25,'app01','0005_msuser_organization','2024-06-05 18:22:58.699949'),(26,'django_apscheduler','0003_auto_20240605_1822','2024-06-05 18:22:58.781966'),(27,'app01','0006_auto_20240615_2240','2024-06-15 22:42:20.163527'),(28,'app01','0007_auto_20240616_1704','2024-06-16 17:20:46.384681'),(29,'app01','0007_auto_20240616_1728','2024-06-16 17:31:59.593943'),(30,'app01','0008_notification','2024-06-16 17:32:21.348937'),(31,'app01','0009_alter_jsonfile_modified_by','2024-06-16 17:35:25.152924'),(32,'app01','0010_csvfile','2024-06-16 19:15:34.156498'),(33,'app01','0011_delete_notification','2024-06-16 20:24:50.186029'),(34,'app01','0012_auto_20240616_2119','2024-06-16 21:19:12.048880'),(35,'app01','0013_auto_20240618_1453','2024-06-18 14:53:22.285019'),(36,'app01','0014_alter_msuser_password','2024-06-18 15:10:56.926255'),(37,'app01','0015_runningtask','2024-07-05 13:26:33.513570'),(38,'app01','0016_runningtask_status','2024-07-14 14:33:14.971724');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bpxz4bevtd1tfl4hkbbgg1p7yf3otb7x','.eJxVjDsOwjAQBe_iGllZ_2JT0ucM1u7a4ACypTipEHeHSCmgfTPzXiLitpa49bzEOYmzCOL0uxHyI9cdpDvWW5Pc6rrMJHdFHrTLqaX8vBzu30HBXr61B-twBDDqSoqNI02eXc4ckgaGxIMKnkY2gIDBOsgetPEcBtAAzor3B9nUNwc:1sKH2B:SqdPH1Gb_PhnxpJyqoTSRWlDDrRtKLX6q0UAqKlZSlo','2024-07-04 12:36:59.064415'),('iijibzl8g59fu9vdlunuufy9ds47d4xa','.eJxVjEEOwiAQRe_C2pB2oBRcuvcMzQwzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlmdVd-p0-9IGB9SdsJ3LLeqYy3rMpPeFX3Qpq-V5Xk53L-DjC1_ayshJUYUB2D9aNEMgSkk66gjk3pHI7JHIQGJAL0ZZOy8BI5sPFhW7w8sBTj4:1sKINa:GMwNLCpJPw69KhXbfh-cS3ZIvfT8LgaxqYurIu1f_r4','2024-07-04 14:03:10.266094'),('kynpln0ig4f81htfkw9hv7yp3u7ut50b','.eJxVjDsOwjAQBe_iGllZ_2JT0ucM1u7a4ACypTipEHeHSCmgfTPzXiLitpa49bzEOYmzCOL0uxHyI9cdpDvWW5Pc6rrMJHdFHrTLqaX8vBzu30HBXr61B-twBDDqSoqNI02eXc4ckgaGxIMKnkY2gIDBOsgetPEcBtAAzor3B9nUNwc:1sTgoq:DYnkLs7L2mZ4V43cJy0YSqCsQh0jMQ29J-9HOG1nDig','2024-07-30 11:58:08.433808'),('n4j2kx1ec49zb6w7fympvt0lwhsr8jf0','.eJxVjDsOwjAQBe_iGllZ_2JT0ucM1u7a4ACypTipEHeHSCmgfTPzXiLitpa49bzEOYmzCOL0uxHyI9cdpDvWW5Pc6rrMJHdFHrTLqaX8vBzu30HBXr61B-twBDDqSoqNI02eXc4ckgaGxIMKnkY2gIDBOsgetPEcBtAAzor3B9nUNwc:1sKH3o:OYdfwCeKttmaQ9ZfB-94flJtZzvq6btyFqssZFtxeKA','2024-07-04 12:38:40.615956');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-16 23:37:23
