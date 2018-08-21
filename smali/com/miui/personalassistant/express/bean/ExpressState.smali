.class public final enum Lcom/miui/personalassistant/express/bean/ExpressState;
.super Ljava/lang/Enum;
.source "ExpressState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/personalassistant/express/bean/ExpressState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/personalassistant/express/bean/ExpressState;

.field public static final enum DELIVERED:Lcom/miui/personalassistant/express/bean/ExpressState;

.field public static final enum DIFFICULT_GOODS:Lcom/miui/personalassistant/express/bean/ExpressState;

.field public static final enum DISPATCHING:Lcom/miui/personalassistant/express/bean/ExpressState;

.field public static final enum ON_THE_WAY:Lcom/miui/personalassistant/express/bean/ExpressState;

.field public static final enum RECEIPTED:Lcom/miui/personalassistant/express/bean/ExpressState;

.field public static final enum RETURNED:Lcom/miui/personalassistant/express/bean/ExpressState;

.field public static final enum SIGNED_RETURN:Lcom/miui/personalassistant/express/bean/ExpressState;

.field public static final enum UNKNOWN:Lcom/miui/personalassistant/express/bean/ExpressState;


# instance fields
.field private mColor:I

.field private mRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x1b0f0079

    new-instance v0, Lcom/miui/personalassistant/express/bean/ExpressState;

    const-string/jumbo v1, "ON_THE_WAY"

    const v2, 0x1b0b014e

    const v3, 0x1b0f0078

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/miui/personalassistant/express/bean/ExpressState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->ON_THE_WAY:Lcom/miui/personalassistant/express/bean/ExpressState;

    new-instance v0, Lcom/miui/personalassistant/express/bean/ExpressState;

    const-string/jumbo v1, "DELIVERED"

    const v2, 0x1b0b014b

    const v3, 0x1b0f0078

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/miui/personalassistant/express/bean/ExpressState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->DELIVERED:Lcom/miui/personalassistant/express/bean/ExpressState;

    new-instance v0, Lcom/miui/personalassistant/express/bean/ExpressState;

    const-string/jumbo v1, "DIFFICULT_GOODS"

    const v2, 0x1b0b014c

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/miui/personalassistant/express/bean/ExpressState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->DIFFICULT_GOODS:Lcom/miui/personalassistant/express/bean/ExpressState;

    new-instance v0, Lcom/miui/personalassistant/express/bean/ExpressState;

    const-string/jumbo v1, "RECEIPTED"

    const v2, 0x1b0b014f

    const v3, 0x1b0f0077

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/miui/personalassistant/express/bean/ExpressState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->RECEIPTED:Lcom/miui/personalassistant/express/bean/ExpressState;

    new-instance v0, Lcom/miui/personalassistant/express/bean/ExpressState;

    const-string/jumbo v1, "SIGNED_RETURN"

    const/4 v2, 0x4

    const v3, 0x1b0b0151

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/miui/personalassistant/express/bean/ExpressState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->SIGNED_RETURN:Lcom/miui/personalassistant/express/bean/ExpressState;

    new-instance v0, Lcom/miui/personalassistant/express/bean/ExpressState;

    const-string/jumbo v1, "DISPATCHING"

    const/4 v2, 0x5

    const v3, 0x1b0b014d

    const v4, 0x1b0f0076

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/personalassistant/express/bean/ExpressState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->DISPATCHING:Lcom/miui/personalassistant/express/bean/ExpressState;

    new-instance v0, Lcom/miui/personalassistant/express/bean/ExpressState;

    const-string/jumbo v1, "RETURNED"

    const/4 v2, 0x6

    const v3, 0x1b0b0150

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/miui/personalassistant/express/bean/ExpressState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->RETURNED:Lcom/miui/personalassistant/express/bean/ExpressState;

    new-instance v0, Lcom/miui/personalassistant/express/bean/ExpressState;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x7

    const v3, 0x1b0b0152

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/miui/personalassistant/express/bean/ExpressState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->UNKNOWN:Lcom/miui/personalassistant/express/bean/ExpressState;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/miui/personalassistant/express/bean/ExpressState;

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->ON_THE_WAY:Lcom/miui/personalassistant/express/bean/ExpressState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->DELIVERED:Lcom/miui/personalassistant/express/bean/ExpressState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->DIFFICULT_GOODS:Lcom/miui/personalassistant/express/bean/ExpressState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->RECEIPTED:Lcom/miui/personalassistant/express/bean/ExpressState;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/miui/personalassistant/express/bean/ExpressState;->SIGNED_RETURN:Lcom/miui/personalassistant/express/bean/ExpressState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/personalassistant/express/bean/ExpressState;->DISPATCHING:Lcom/miui/personalassistant/express/bean/ExpressState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/personalassistant/express/bean/ExpressState;->RETURNED:Lcom/miui/personalassistant/express/bean/ExpressState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/personalassistant/express/bean/ExpressState;->UNKNOWN:Lcom/miui/personalassistant/express/bean/ExpressState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->$VALUES:[Lcom/miui/personalassistant/express/bean/ExpressState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/personalassistant/express/bean/ExpressState;->mRes:I

    iput p4, p0, Lcom/miui/personalassistant/express/bean/ExpressState;->mColor:I

    return-void
.end method

.method public static valueOf(I)Lcom/miui/personalassistant/express/bean/ExpressState;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->UNKNOWN:Lcom/miui/personalassistant/express/bean/ExpressState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->DELIVERED:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->DELIVERED:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->ON_THE_WAY:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->ON_THE_WAY:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->ON_THE_WAY:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->DISPATCHING:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->DIFFICULT_GOODS:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->SIGNED_RETURN:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->DISPATCHING:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->RECEIPTED:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->RETURNED:Lcom/miui/personalassistant/express/bean/ExpressState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static valueOf(Lcom/miui/personalassistant/express/bean/ExpressEntry;)Lcom/miui/personalassistant/express/bean/ExpressState;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/express/bean/ExpressState;->values()[Lcom/miui/personalassistant/express/bean/ExpressState;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->UNKNOWN:Lcom/miui/personalassistant/express/bean/ExpressState;

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/miui/personalassistant/express/bean/ExpressState;->values()[Lcom/miui/personalassistant/express/bean/ExpressState;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/personalassistant/express/bean/ExpressState;->valueOf(I)Lcom/miui/personalassistant/express/bean/ExpressState;

    move-result-object v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/personalassistant/express/bean/ExpressState;
    .locals 1

    const-class v0, Lcom/miui/personalassistant/express/bean/ExpressState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/ExpressState;

    return-object v0
.end method

.method public static values()[Lcom/miui/personalassistant/express/bean/ExpressState;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/express/bean/ExpressState;->$VALUES:[Lcom/miui/personalassistant/express/bean/ExpressState;

    invoke-virtual {v0}, [Lcom/miui/personalassistant/express/bean/ExpressState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/personalassistant/express/bean/ExpressState;

    return-object v0
.end method


# virtual methods
.method public getDescriptionRes()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/express/bean/ExpressState;->mRes:I

    return v0
.end method

.method public getStatTextColor()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/express/bean/ExpressState;->mColor:I

    return v0
.end method
