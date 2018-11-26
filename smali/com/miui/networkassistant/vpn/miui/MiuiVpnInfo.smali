.class public Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field protected static final VPN_STATE_DISABLED:I = 0x2

.field protected static final VPN_STATE_ENABLED:I = 0x1

.field protected static final VPN_STATE_NOORDER:I = 0x3

.field protected static final VPN_STATE_UNKNOWN:I


# instance fields
.field private mDescribe:Ljava/lang/String;

.field private mDetailInfoUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mState:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo$1;

    invoke-direct {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo$1;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mState:I

    iput p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mType:I

    iput-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mDescribe:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mDetailInfoUrl:Ljava/lang/String;

    iput p5, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mState:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mDescribe:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mDetailInfoUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mDescribe:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailInfoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mDetailInfoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mType:I

    return v0
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mDescribe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mDetailInfoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
