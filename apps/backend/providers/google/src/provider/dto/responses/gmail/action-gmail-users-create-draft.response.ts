import {
    ManifestProperty,
    ManifestPropertyEnum,
    ManifestType,
  } from "@lib/manifest";
  
  @ManifestType()
  export class Header {
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    name: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    value: string;
  }
  
  @ManifestType()
  export class MessagePartBody {
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    data: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.NUMBER,
    })
    size: number;
  }
  
  @ManifestType()
  export class MessagePart {
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    partId: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    mimeType: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    filename: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.ARRAY,
      items: { type: ManifestPropertyEnum.OBJECT, properties: Header },
    })
    headers: Array<Header>;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.OBJECT,
      properties: MessagePartBody,
    })
    body: MessagePartBody;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.ARRAY,
      items: { type: ManifestPropertyEnum.OBJECT, properties: MessagePart },
    })
    parts: Array<MessagePart>;
  }
  
  @ManifestType()
  export class Message {
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    id: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    threadId: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.ARRAY,
      items: { type: ManifestPropertyEnum.STRING },
    })
    labelIds: Array<string>;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    snippet: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    historyId: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    internalDate: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.OBJECT,
      properties: MessagePart,
    })
    payload: MessagePart;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.NUMBER,
    })
    sizeEstimate: number;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    raw: string;
  }
  
  @ManifestType()
  export class CreateDraftResponse {
    @ManifestProperty({
      type: ManifestPropertyEnum.STRING,
    })
    id: string;
  
    @ManifestProperty({
      type: ManifestPropertyEnum.OBJECT,
      properties: Message,
    })
    message: Message;
  }
  