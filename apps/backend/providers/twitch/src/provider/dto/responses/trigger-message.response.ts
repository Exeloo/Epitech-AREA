import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { TriggerMessageSubResponse } from "~/provider/dto/responses/trigger-message-sub.response";

@ManifestType()
export class TriggerMessageResponse {
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
  chatter_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  chatter_user_login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  chatter_user_name: string;

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
