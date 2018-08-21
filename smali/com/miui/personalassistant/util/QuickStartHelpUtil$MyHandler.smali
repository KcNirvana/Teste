.class Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;
.super Landroid/os/Handler;
.source "QuickStartHelpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/util/QuickStartHelpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStartHelpUtil:Lcom/miui/personalassistant/util/QuickStartHelpUtil;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/util/QuickStartHelpUtil;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;->mStartHelpUtil:Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/util/QuickStartHelpUtil$MyHandler;->mStartHelpUtil:Lcom/miui/personalassistant/util/QuickStartHelpUtil;

    invoke-static {v0}, Lcom/miui/personalassistant/util/QuickStartHelpUtil;->access$100(Lcom/miui/personalassistant/util/QuickStartHelpUtil;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
