import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { ActionDropReasonResponse } from "~/provider/dto/responses/action-drop-reason.response";

@ManifestType()
export class ActionMessageResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  message_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_sent: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: ActionDropReasonResponse,
  })
  drop_reason: ActionDropReasonResponse;
}
