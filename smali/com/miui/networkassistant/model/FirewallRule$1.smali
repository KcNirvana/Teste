.class final Lcom/miui/networkassistant/model/FirewallRule$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/model/FirewallRule;->parse(I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/model/FirewallRule$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    new-array v0, p1, [Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/model/FirewallRule$1;->newArray(I)[Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    return-object v0
.end method
