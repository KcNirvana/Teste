.class Lcom/miui/voicesdk/ScreencapHelper$3;
.super Ljava/lang/Object;
.source "ScreencapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/voicesdk/ScreencapHelper;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/voicesdk/ScreencapHelper;


# direct methods
.method constructor <init>(Lcom/miui/voicesdk/ScreencapHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/ScreencapHelper$3;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper$3;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-static {v0}, Lcom/miui/voicesdk/ScreencapHelper;->access$000(Lcom/miui/voicesdk/ScreencapHelper;)Lcom/miui/voicesdk/ActionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper$3;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-static {v0}, Lcom/miui/voicesdk/ScreencapHelper;->access$000(Lcom/miui/voicesdk/ScreencapHelper;)Lcom/miui/voicesdk/ActionCallback;

    move-result-object v0

    new-instance v1, Lcom/miui/voicesdk/ActionStatus;

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper$3;->this$0:Lcom/miui/voicesdk/ScreencapHelper;

    invoke-static {v2}, Lcom/miui/voicesdk/ScreencapHelper;->access$200(Lcom/miui/voicesdk/ScreencapHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/miui/voicesdk/ActionStatus;->SCREENCAP_LEN:I

    invoke-direct {v1, v2, v3}, Lcom/miui/voicesdk/ActionStatus;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/miui/voicesdk/ActionCallback;->onActionCallback(Lcom/miui/voicesdk/ActionStatus;)Z

    :cond_0
    return-void
.end method
