class AppletData {
  final String name;
  final String description;
  final List<TriggerNode> triggerNodes;

  AppletData({
    required this.name,
    required this.description,
    required this.triggerNodes,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'triggerNodes': triggerNodes.map((node) => node.toJson()).toList(),
    };
  }
}

class TriggerNode {
  final int? providerId;
  final String actionId;
  final Map<String, dynamic> input;
  final List<TriggerNode> next;

  TriggerNode({
    required this.providerId,
    required this.actionId,
    required this.input,
    required this.next,
  });

  Map<String, dynamic> toJson() {
    return {
      'providerId': providerId,
      'actionId': actionId,
      'input': input,
      'next': next.map((node) => node.toJson()).toList(),
    };
  }
}