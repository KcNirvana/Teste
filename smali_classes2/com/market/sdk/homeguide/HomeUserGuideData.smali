.class public Lcom/market/sdk/homeguide/HomeUserGuideData;
.super Lcom/market/sdk/AbsParcelable;
.source "HomeUserGuideData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/market/sdk/homeguide/HomeUserGuideData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private homeScreen:Landroid/net/Uri;

.field private localFilePath:Ljava/lang/String;

.field private viewConfig:Lcom/market/sdk/homeguide/ViewConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/market/sdk/homeguide/HomeUserGuideData$1;

    invoke-direct {v0}, Lcom/market/sdk/homeguide/HomeUserGuideData$1;-><init>()V

    sput-object v0, Lcom/market/sdk/homeguide/HomeUserGuideData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/market/sdk/AbsParcelable;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/market/sdk/AbsParcelable;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/market/sdk/homeguide/ViewConfig;

    iput-object v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->viewConfig:Lcom/market/sdk/homeguide/ViewConfig;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->homeScreen:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHomeScreenUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->homeScreen:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getViewConfig()Lcom/market/sdk/homeguide/ViewConfig;
    .locals 1

    iget-object v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->viewConfig:Lcom/market/sdk/homeguide/ViewConfig;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->viewConfig:Lcom/market/sdk/homeguide/ViewConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->viewConfig:Lcom/market/sdk/homeguide/ViewConfig;

    invoke-virtual {v0}, Lcom/market/sdk/homeguide/ViewConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->homeScreen:Landroid/net/Uri;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public setHomeScreenUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->homeScreen:Landroid/net/Uri;

    return-void
.end method

.method public setLocalFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->localFilePath:Ljava/lang/String;

    return-void
.end method

.method public setViewConfig(Lcom/market/sdk/homeguide/ViewConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->viewConfig:Lcom/market/sdk/homeguide/ViewConfig;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/market/sdk/AbsParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->viewConfig:Lcom/market/sdk/homeguide/ViewConfig;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/market/sdk/homeguide/HomeUserGuideData;->homeScreen:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
