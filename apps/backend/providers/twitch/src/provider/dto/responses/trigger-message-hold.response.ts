import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { TriggerMessageSubResponse } from "~/provider/dto/responses/trigger-message-sub.response";

@ManifestType()
export class TriggerAutomodFlagEventResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  broadcaster_user_login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  broadcaster_user_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  message_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: TriggerMessageSubResponse,
  })
  message: TriggerMessageSubResponse;
}
