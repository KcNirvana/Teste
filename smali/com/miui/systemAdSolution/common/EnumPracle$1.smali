.class final Lcom/miui/systemAdSolution/common/EnumPracle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/miui/systemAdSolution/common/EnumPracle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/systemAdSolution/common/EnumPracle;
    .locals 1

    new-instance v0, Lcom/miui/systemAdSolution/common/EnumPracle;

    invoke-direct {v0, p1}, Lcom/miui/systemAdSolution/common/EnumPracle;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/common/EnumPracle$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/systemAdSolution/common/EnumPracle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/systemAdSolution/common/EnumPracle;
    .locals 1

    new-array v0, p1, [Lcom/miui/systemAdSolution/common/EnumPracle;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/common/EnumPracle$1;->newArray(I)[Lcom/miui/systemAdSolution/common/EnumPracle;

    move-result-object v0

    return-object v0
.end method
