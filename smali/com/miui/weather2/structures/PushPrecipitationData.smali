.class public Lcom/miui/weather2/structures/PushPrecipitationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/weather2/structures/PushPrecipitationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDescriptionGenerated:Ljava/lang/String;

.field private mDescriptionOrignal:Ljava/lang/String;

.field private mExpireTime:Ljava/lang/String;

.field private mGeneratedTitle:Ljava/lang/String;

.field private mLatitude:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mMessageActionType:Ljava/lang/String;

.field private mMessageDatasType:Ljava/lang/String;

.field private mMessageId:Ljava/lang/String;

.field private mMessageType:Ljava/lang/String;

.field private mNotifyId:Ljava/lang/String;

.field private mPubTime:Ljava/lang/String;

.field private mRainOrSnow:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mTitleOrignal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/weather2/structures/PushPrecipitationData$1;

    invoke-direct {v0}, Lcom/miui/weather2/structures/PushPrecipitationData$1;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/PushPrecipitationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mStatus:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mNotifyId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageActionType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageDatasType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mLongitude:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mLatitude:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mPubTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mExpireTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mTitleOrignal:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mGeneratedTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mRainOrSnow:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mDescriptionGenerated:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mDescriptionOrignal:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/weather2/structures/PushPrecipitationData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/structures/PushPrecipitationData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescriptionOrignal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mDescriptionOrignal:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mExpireTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mDescriptionGenerated:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mGeneratedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageActionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageActionType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDatasType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageDatasType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageType:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mNotifyId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrignalTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mTitleOrignal:Ljava/lang/String;

    return-object v0
.end method

.method public getPubTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mPubTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRainOrSnow()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mRainOrSnow:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setDescriptionOrignal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mDescriptionOrignal:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mExpireTime:Ljava/lang/String;

    return-void
.end method

.method public setGeneratedDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mDescriptionGenerated:Ljava/lang/String;

    return-void
.end method

.method public setGeneratedTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mGeneratedTitle:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mLatitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mLongitude:Ljava/lang/String;

    return-void
.end method

.method public setMessageActionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageActionType:Ljava/lang/String;

    return-void
.end method

.method public setMessageDatasType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageDatasType:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageId:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageType:Ljava/lang/String;

    return-void
.end method

.method public setNotifyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mNotifyId:Ljava/lang/String;

    return-void
.end method

.method public setOrignalTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mTitleOrignal:Ljava/lang/String;

    return-void
.end method

.method public setPubTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mPubTime:Ljava/lang/String;

    return-void
.end method

.method public setRainOrSnow(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mRainOrSnow:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mStatus:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mNotifyId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageActionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mMessageDatasType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mLongitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mLatitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mPubTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mExpireTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mTitleOrignal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mGeneratedTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mRainOrSnow:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mDescriptionGenerated:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/PushPrecipitationData;->mDescriptionOrignal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
