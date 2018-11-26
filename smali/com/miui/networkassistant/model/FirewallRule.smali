.class public final enum Lcom/miui/networkassistant/model/FirewallRule;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/networkassistant/model/FirewallRule;

.field public static final enum Alert:Lcom/miui/networkassistant/model/FirewallRule;

.field public static final enum Allow:Lcom/miui/networkassistant/model/FirewallRule;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum Init:Lcom/miui/networkassistant/model/FirewallRule;

.field public static final enum Restrict:Lcom/miui/networkassistant/model/FirewallRule;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/networkassistant/model/FirewallRule;

    const-string/jumbo v1, "Init"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/networkassistant/model/FirewallRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Init:Lcom/miui/networkassistant/model/FirewallRule;

    new-instance v0, Lcom/miui/networkassistant/model/FirewallRule;

    const-string/jumbo v1, "Allow"

    invoke-direct {v0, v1, v4, v3}, Lcom/miui/networkassistant/model/FirewallRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    new-instance v0, Lcom/miui/networkassistant/model/FirewallRule;

    const-string/jumbo v1, "Restrict"

    invoke-direct {v0, v1, v5, v4}, Lcom/miui/networkassistant/model/FirewallRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    new-instance v0, Lcom/miui/networkassistant/model/FirewallRule;

    const-string/jumbo v1, "Alert"

    invoke-direct {v0, v1, v6, v5}, Lcom/miui/networkassistant/model/FirewallRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Alert:Lcom/miui/networkassistant/model/FirewallRule;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Init:Lcom/miui/networkassistant/model/FirewallRule;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Alert:Lcom/miui/networkassistant/model/FirewallRule;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/networkassistant/model/FirewallRule;->$VALUES:[Lcom/miui/networkassistant/model/FirewallRule;

    new-instance v0, Lcom/miui/networkassistant/model/FirewallRule$1;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/FirewallRule$1;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/model/FirewallRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/networkassistant/model/FirewallRule;->value:I

    return-void
.end method

.method public static parse(I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Init:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Alert:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    const-class v0, Lcom/miui/networkassistant/model/FirewallRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method

.method public static values()[Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->$VALUES:[Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/networkassistant/model/FirewallRule;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/model/FirewallRule;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/model/FirewallRule;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
