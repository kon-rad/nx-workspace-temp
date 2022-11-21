/* eslint-disable camelcase */
export interface IRaid {
  id: string;
  raidName: string;
  status: string;
  raidParty: {
    id: string;
    members: IMember[];
  };
  cleric: IMember;
  rolesRequired: string[];
  category: string;
  startDate: Date;
  endDate: Date;
  invoiceAddress: string;
  lastModified: string; // Date;
  consultation: IConsultation;
  comments: IComment[];
  legacy: {
    airtableId: string;
    escrowIndex: number;
    lockerHash: string;
  };
  createdAt: string;
}

export interface IMember {
  id: string;
  name: string;
  isRaiding: boolean;
  guildClass: string;
  primarySkills: string[];
  secondarySkills?: string[];
  discordHandle?: string;
  githubHandle?: string;
  twitterHandle?: string;
  ensName?: string;
  ethAddress?: string;
  application: IApplication;
}

export interface IConsultation {
  id: string;
  projectName: string;
  invoiceAddress: string;
  contactName: string;
  contactEmail: string;
  contactBio: string;
  contactTelegram: string;
  contactDiscord: string;
  contactTwitter: string;
  preferredContact: string;
  projectType: string;
  projectSpecs: string;
  specsLink: string;
  projectDesc: string;
  servicesReq: string[];
  desiredDelivery: string;
  budget: string;
  additionalInfo: string;
  deliveryPriorities: string;
  submissionType: string;
  consultationHash: string;
  heardRaidguild: string;
  feedback: string;
  rating: string;
  createdAt: string;
}

export interface IApplication {
  id: string;
  name: string;
  guildClass: string;
  primarySkills: string[];
  secondarySkills: string[];
  discordHandle?: string;
  githubHandle?: string;
  telegramHandle?: string;
  emailAddress?: string;
  twitterHandle?: string;
  ensName: string;
  ethAddress: string;
  pledgeReadiness?: string;
  introduction?: string;
  status?: string;
  learningGoals?: string;
  skillType: string;
  passion?: string;
  favoriteMedia?: string;
  cryptoExp?: string;
  daoFamiliarity?: string;
  cryptoThrills?: string;
  whyRaidguild?: string;
  handbookRead?: boolean;
  availability?: string;
  comments?: string;
  submissionDate?: string;
}

// TODO remove strings here
export interface IComment {
  id: string;
  comment: string;
  commentedBy: IMember;
  commentedRaid: IRaid;
  createdAt: string;
  modifiedAt: string;
}

/* eslint-disable camelcase */
export interface Chain {
  name: string;
  short_name: string;
  chain: string;
  network: string;
  network_id: number;
  chain_id: string;
  providers: string[];
  rpc_url: string;
  block_explorer: string;
}

export interface ChainList {
  [key: string]: Chain;
}

export interface ChainIdMapping {
  [key: number]: Chain;
}