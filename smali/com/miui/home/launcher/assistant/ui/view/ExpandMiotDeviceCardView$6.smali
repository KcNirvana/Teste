.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$6;
.super Ljava/lang/Object;
.source "ExpandMiotDeviceCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->shrinkDeviceCardView()V

    return-void
.end method
