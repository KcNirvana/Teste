.class public Lcom/miui/weather2/structures/BrandInfo$BrandNames;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/structures/BrandInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrandNames"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/weather2/structures/BrandInfo$BrandNames;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEn_Us:Ljava/lang/String;

.field private mZh_Cn:Ljava/lang/String;

.field private mZh_Tw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/weather2/structures/BrandInfo$BrandNames$1;

    invoke-direct {v0}, Lcom/miui/weather2/structures/BrandInfo$BrandNames$1;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mEn_Us:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mZh_Tw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mZh_Cn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEn_Us()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mEn_Us:Ljava/lang/String;

    return-object v0
.end method

.method public getZh_Cn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mZh_Cn:Ljava/lang/String;

    return-object v0
.end method

.method public getZh_Tw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mZh_Tw:Ljava/lang/String;

    return-object v0
.end method

.method public setEn_Us(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mEn_Us:Ljava/lang/String;

    return-void
.end method

.method public setZh_Cn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mZh_Cn:Ljava/lang/String;

    return-void
.end method

.method public setZh_Tw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mZh_Tw:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mEn_Us:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mZh_Tw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->mZh_Cn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
