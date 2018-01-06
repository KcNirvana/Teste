.class public Lcom/miui/weather2/structures/BrandInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/structures/BrandInfo$BrandNames;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/weather2/structures/BrandInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrandId:Ljava/lang/String;

.field private mLogo:Ljava/lang/String;

.field private mNames:Lcom/miui/weather2/structures/BrandInfo$BrandNames;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/weather2/structures/BrandInfo$1;

    invoke-direct {v0}, Lcom/miui/weather2/structures/BrandInfo$1;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/BrandInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mBrandId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mLogo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mUrl:Ljava/lang/String;

    const-class v0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;

    iput-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mNames:Lcom/miui/weather2/structures/BrandInfo$BrandNames;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBrandId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mBrandId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getNames()Lcom/miui/weather2/structures/BrandInfo$BrandNames;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mNames:Lcom/miui/weather2/structures/BrandInfo$BrandNames;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBrandId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/BrandInfo;->mBrandId:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/BrandInfo;->mLogo:Ljava/lang/String;

    return-void
.end method

.method public setNames(Lcom/miui/weather2/structures/BrandInfo$BrandNames;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/BrandInfo;->mNames:Lcom/miui/weather2/structures/BrandInfo$BrandNames;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/BrandInfo;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mBrandId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo;->mNames:Lcom/miui/weather2/structures/BrandInfo$BrandNames;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
