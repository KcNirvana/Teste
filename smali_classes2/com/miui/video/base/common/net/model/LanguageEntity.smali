.class public Lcom/miui/video/base/common/net/model/LanguageEntity;
.super Lcom/miui/video/common/feed/entity/CoreEntity;
.source "LanguageEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/video/base/common/net/model/LanguageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LanguageEntity"


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field public mIsSelected:Z

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/base/common/net/model/LanguageEntity$1;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/LanguageEntity$1;-><init>()V

    sput-object v0, Lcom/miui/video/base/common/net/model/LanguageEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Lcom/miui/video/base/common/net/model/LanguageEntity;->setLayoutType(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/common/feed/entity/CoreEntity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/base/common/net/model/LanguageEntity;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/base/common/net/model/LanguageEntity;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    const/16 p1, 0x44

    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/net/model/LanguageEntity;->setLayoutType(I)V

    return-void
.end method

.method public static parseLanguageEntity(Lorg/json/JSONObject;)Lcom/miui/video/base/common/net/model/LanguageEntity;
    .locals 2

    new-instance v0, Lcom/miui/video/base/common/net/model/LanguageEntity;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/LanguageEntity;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/common/net/model/LanguageEntity;->id:Ljava/lang/String;

    const-string v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/video/base/common/net/model/LanguageEntity;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/LanguageEntity;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/video/base/common/net/model/LanguageEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
