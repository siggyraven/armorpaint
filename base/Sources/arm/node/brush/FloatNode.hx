package arm.node.brush;

@:keep
class FloatNode extends LogicNode {

	public var value: Float;

	public function new(tree: LogicTree, value = 0.0) {
		super(tree);
		this.value = value;
	}

	override function get(from: Int, done: Dynamic->Void) {
		if (inputs.length > 0) inputs[0].get(done);
		else done(value);
	}

	override function set(value: Dynamic) {
		if (inputs.length > 0) inputs[0].set(value);
		else this.value = value;
	}
}
