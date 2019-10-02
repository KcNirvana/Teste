.class public Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;
.super Ljava/lang/Object;
.source "WidevineClassicDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/drm/WidevineClassicDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RightsInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;
    }
.end annotation


# instance fields
.field public availableTime:I

.field public expiryTime:I

.field public rawConstraints:Landroid/content/ContentValues;

.field public startTime:I

.field public status:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;


# direct methods
.method private constructor <init>(ILandroid/content/ContentValues;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;->rawConstraints:Landroid/content/ContentValues;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->NOT_ACQUIRED:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;->status:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->EXPIRED:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;->status:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->INVALID:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;->status:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;->VALID:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;->status:Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo$Status;

    if-eqz p2, :cond_0

    :try_start_0
    const-string p1, "license_start_time"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;->startTime:I

    const-string p1, "license_expiry_time"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;->expiryTime:I

    const-string p1, "license_available_time"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;->availableTime:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid constraints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(ILandroid/content/ContentValues;Lcom/kaltura/playkit/drm/WidevineClassicDrm$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;-><init>(ILandroid/content/ContentValues;)V

    return-void
.end method
