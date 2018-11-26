.class abstract Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mChannel:Ljava/lang/String;

.field private mIconRes:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "networkassistant_notify_channel"

    iput-object v0, p0, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->mChannel:Ljava/lang/String;

    const v0, 0x7f0201c6

    iput v0, p0, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->mIconRes:I

    return-void
.end method


# virtual methods
.method getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getIconRes()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->mIconRes:I

    return v0
.end method

.method onBuild(Landroid/app/Notification$Builder;)V
    .locals 0

    return-void
.end method

.method onCreateIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->mIconRes:I

    return-void
.end method
