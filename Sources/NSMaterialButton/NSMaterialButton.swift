import Cocoa

public class NSMaterialButton: NSButton {
    private var trackingArea: NSTrackingArea?

    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        applyStyles()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyStyles()
    }

    private func applyStyles() {
        wantsLayer = true
        bezelStyle = .regularSquare
        layer?.cornerRadius = bounds.height / 2
        isBordered = false
        isTransparent = true
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: heightAnchor).isActive = true
    }

    public override func updateLayer() {
        layer?.cornerRadius = bounds.height / 2
    }

    public override func updateTrackingAreas() {
        if trackingArea == nil {
            self.trackingArea = NSTrackingArea(rect: self.bounds, options: [.activeAlways, .mouseEnteredAndExited], owner: self, userInfo: nil)
            addTrackingArea(self.trackingArea!)
        }
    }
    let inColor = NSColor(white: 1, alpha: 0.15)

    let pressColor = NSColor(white: 1, alpha: 0.30)

    public override func mouseDown(with event: NSEvent) {
        self.layer?.backgroundColor = pressColor.cgColor
    }

    public override func mouseUp(with event: NSEvent) {
        self.layer?.backgroundColor = inColor.cgColor
        sendAction(action, to: target)
    }

    public override func mouseEntered(with event: NSEvent) {
        self.layer?.backgroundColor = inColor.cgColor
    }

    public override func mouseExited(with event: NSEvent) {
        self.layer?.backgroundColor = NSColor.clear.cgColor
    }
}
