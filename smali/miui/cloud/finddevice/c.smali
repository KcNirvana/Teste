.class public Lmiui/cloud/finddevice/c;
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
            "Lmiui/cloud/finddevice/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lmiui/cloud/finddevice/a;

.field public final b:Lmiui/cloud/finddevice/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/cloud/finddevice/d;

    invoke-direct {v0}, Lmiui/cloud/finddevice/d;-><init>()V

    sput-object v0, Lmiui/cloud/finddevice/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/cloud/finddevice/a;

    invoke-direct {v0}, Lmiui/cloud/finddevice/a;-><init>()V

    iput-object v0, p0, Lmiui/cloud/finddevice/c;->a:Lmiui/cloud/finddevice/a;

    new-instance v0, Lmiui/cloud/finddevice/g;

    invoke-direct {v0}, Lmiui/cloud/finddevice/g;-><init>()V

    iput-object v0, p0, Lmiui/cloud/finddevice/c;->b:Lmiui/cloud/finddevice/g;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lmiui/cloud/finddevice/c;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/cloud/finddevice/c;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/cloud/finddevice/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/cloud/finddevice/c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Lmiui/cloud/finddevice/c;->a:Lmiui/cloud/finddevice/a;

    invoke-virtual {v0, p1}, Lmiui/cloud/finddevice/a;->a(Landroid/os/Parcel;)V

    iget-object v0, p0, Lmiui/cloud/finddevice/c;->b:Lmiui/cloud/finddevice/g;

    invoke-virtual {v0, p1}, Lmiui/cloud/finddevice/g;->b(Landroid/os/Parcel;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lmiui/cloud/finddevice/c;->a:Lmiui/cloud/finddevice/a;

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/finddevice/a;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lmiui/cloud/finddevice/c;->b:Lmiui/cloud/finddevice/g;

    invoke-virtual {v0, p1}, Lmiui/cloud/finddevice/g;->a(Landroid/os/Parcel;)V

    return-void
.end method
