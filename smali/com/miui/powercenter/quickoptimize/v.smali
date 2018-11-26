.class public Lcom/miui/powercenter/quickoptimize/v;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public aEH:Ljava/lang/String;

.field public data:Ljava/lang/Object;

.field public taskId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aQG()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/quickoptimize/v;->taskId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "optimize_kill_app"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "optimize_clean_memory_lock_screen"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "optimize_screen_brightness"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "optimize_app_auto_start"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "optimize_app_invoke"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "optimize_open_hide_mode"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "optimize_open_save_mode"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "optimize_disable_gps"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
