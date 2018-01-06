.class public Lcom/miui/systemAdSolution/landingPageV2/task/action/ActionCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionCreator"

.field public static final TYPE_DEEPLINK_ACTION:I = 0x1

.field public static final TYPE_DOWNLOAD_ACTION:I = 0x3

.field public static final TYPE_H5_ACTION:I = 0x2

.field public static final TYPE_IACTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainAction(Landroid/os/Parcel;)Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const-string v1, "ActionCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const-string v1, "ActionCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/ad/internal/common/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_0
    const-string v0, "ActionCreator"

    const-string v1, "Error : Action can\'t be instantiation"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DeeplinkAction;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DeeplinkAction;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
