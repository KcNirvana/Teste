.class Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;
.super Landroid/os/Handler;
.source "LiteSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/util/LiteSoundManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->access$000(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-direct {v2, v5, v5, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, v1, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->access$100(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1b070003

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, v1, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->open_sound:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->access$100(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1b070004

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, v1, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->close_sound:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->access$000(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->access$200(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    iget v2, v2, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->open_sound:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    iget v2, v2, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->close_sound:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->effectPool:Landroid/media/SoundPool;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/LiteSoundManager$1;->this$0:Lcom/miui/home/launcher/assistant/util/LiteSoundManager;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/LiteSoundManager;->access$300(Lcom/miui/home/launcher/assistant/util/LiteSoundManager;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
