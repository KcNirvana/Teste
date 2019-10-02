.class public final enum Lio/lindstrom/m3u8/model/KeyMethod;
.super Ljava/lang/Enum;
.source "KeyMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/lindstrom/m3u8/model/KeyMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/lindstrom/m3u8/model/KeyMethod;

.field public static final enum AES_128:Lio/lindstrom/m3u8/model/KeyMethod;

.field private static final AES_128_STRING:Ljava/lang/String; = "AES-128"

.field public static final enum NONE:Lio/lindstrom/m3u8/model/KeyMethod;

.field public static final enum SAMPLE_AES:Lio/lindstrom/m3u8/model/KeyMethod;

.field private static final SAMPLE_AES_STRING:Ljava/lang/String; = "SAMPLE-AES"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/lindstrom/m3u8/model/KeyMethod;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/lindstrom/m3u8/model/KeyMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/lindstrom/m3u8/model/KeyMethod;->NONE:Lio/lindstrom/m3u8/model/KeyMethod;

    new-instance v0, Lio/lindstrom/m3u8/model/KeyMethod;

    const-string v1, "AES_128"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/lindstrom/m3u8/model/KeyMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/lindstrom/m3u8/model/KeyMethod;->AES_128:Lio/lindstrom/m3u8/model/KeyMethod;

    new-instance v0, Lio/lindstrom/m3u8/model/KeyMethod;

    const-string v1, "SAMPLE_AES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/lindstrom/m3u8/model/KeyMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/lindstrom/m3u8/model/KeyMethod;->SAMPLE_AES:Lio/lindstrom/m3u8/model/KeyMethod;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/lindstrom/m3u8/model/KeyMethod;

    sget-object v1, Lio/lindstrom/m3u8/model/KeyMethod;->NONE:Lio/lindstrom/m3u8/model/KeyMethod;

    aput-object v1, v0, v2

    sget-object v1, Lio/lindstrom/m3u8/model/KeyMethod;->AES_128:Lio/lindstrom/m3u8/model/KeyMethod;

    aput-object v1, v0, v3

    sget-object v1, Lio/lindstrom/m3u8/model/KeyMethod;->SAMPLE_AES:Lio/lindstrom/m3u8/model/KeyMethod;

    aput-object v1, v0, v4

    sput-object v0, Lio/lindstrom/m3u8/model/KeyMethod;->$VALUES:[Lio/lindstrom/m3u8/model/KeyMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lio/lindstrom/m3u8/model/KeyMethod;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1725bfe7

    if-eq v0, v1, :cond_1

    const v1, 0x256ef60c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SAMPLE-AES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "AES-128"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lio/lindstrom/m3u8/model/KeyMethod;->valueOf(Ljava/lang/String;)Lio/lindstrom/m3u8/model/KeyMethod;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lio/lindstrom/m3u8/model/KeyMethod;->SAMPLE_AES:Lio/lindstrom/m3u8/model/KeyMethod;

    return-object p0

    :pswitch_1
    sget-object p0, Lio/lindstrom/m3u8/model/KeyMethod;->AES_128:Lio/lindstrom/m3u8/model/KeyMethod;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lio/lindstrom/m3u8/model/KeyMethod;
    .locals 1

    const-class v0, Lio/lindstrom/m3u8/model/KeyMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/lindstrom/m3u8/model/KeyMethod;

    return-object p0
.end method

.method public static values()[Lio/lindstrom/m3u8/model/KeyMethod;
    .locals 1

    sget-object v0, Lio/lindstrom/m3u8/model/KeyMethod;->$VALUES:[Lio/lindstrom/m3u8/model/KeyMethod;

    invoke-virtual {v0}, [Lio/lindstrom/m3u8/model/KeyMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/lindstrom/m3u8/model/KeyMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lio/lindstrom/m3u8/model/KeyMethod$1;->$SwitchMap$io$lindstrom$m3u8$model$KeyMethod:[I

    invoke-virtual {p0}, Lio/lindstrom/m3u8/model/KeyMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SAMPLE-AES"

    return-object v0

    :pswitch_1
    const-string v0, "AES-128"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
