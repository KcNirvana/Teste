.class Lcom/miui/video/common/library/utils/LayerUtils$2;
.super Landroid/os/Handler;
.source "LayerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/utils/LayerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/library/utils/LayerUtils;


# direct methods
.method constructor <init>(Lcom/miui/video/common/library/utils/LayerUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$2;->this$0:Lcom/miui/video/common/library/utils/LayerUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$2;->this$0:Lcom/miui/video/common/library/utils/LayerUtils;

    invoke-static {p1}, Lcom/miui/video/common/library/utils/LayerUtils;->access$100(Lcom/miui/video/common/library/utils/LayerUtils;)V

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$2;->this$0:Lcom/miui/video/common/library/utils/LayerUtils;

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils;->showNext()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils$2;->this$0:Lcom/miui/video/common/library/utils/LayerUtils;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-static {v0, p1}, Lcom/miui/video/common/library/utils/LayerUtils;->access$000(Lcom/miui/video/common/library/utils/LayerUtils;Lcom/miui/video/common/library/utils/LayerUtils$Layer;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
