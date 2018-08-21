.class public final enum Lss/ab;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lss/ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lss/ab;

.field public static final enum b:Lss/ab;

.field public static final enum c:Lss/ab;

.field public static final enum d:Lss/ab;

.field private static final synthetic f:[Lss/ab;


# instance fields
.field final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lss/ab;

    const-string/jumbo v1, "TLS_1_2"

    const-string/jumbo v2, "TLSv1.2"

    invoke-direct {v0, v1, v3, v2}, Lss/ab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lss/ab;->a:Lss/ab;

    new-instance v0, Lss/ab;

    const-string/jumbo v1, "TLS_1_1"

    const-string/jumbo v2, "TLSv1.1"

    invoke-direct {v0, v1, v4, v2}, Lss/ab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lss/ab;->b:Lss/ab;

    new-instance v0, Lss/ab;

    const-string/jumbo v1, "TLS_1_0"

    const-string/jumbo v2, "TLSv1"

    invoke-direct {v0, v1, v5, v2}, Lss/ab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lss/ab;->c:Lss/ab;

    new-instance v0, Lss/ab;

    const-string/jumbo v1, "SSL_3_0"

    const-string/jumbo v2, "SSLv3"

    invoke-direct {v0, v1, v6, v2}, Lss/ab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lss/ab;->d:Lss/ab;

    const/4 v0, 0x4

    new-array v0, v0, [Lss/ab;

    sget-object v1, Lss/ab;->a:Lss/ab;

    aput-object v1, v0, v3

    sget-object v1, Lss/ab;->b:Lss/ab;

    aput-object v1, v0, v4

    sget-object v1, Lss/ab;->c:Lss/ab;

    aput-object v1, v0, v5

    sget-object v1, Lss/ab;->d:Lss/ab;

    aput-object v1, v0, v6

    sput-object v0, Lss/ab;->f:[Lss/ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lss/ab;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lss/ab;
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v1, "TLSv1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "TLSv1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "TLSv1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "SSLv3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    sget-object v0, Lss/ab;->a:Lss/ab;

    :goto_1
    return-object v0

    :pswitch_1
    sget-object v0, Lss/ab;->b:Lss/ab;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lss/ab;->c:Lss/ab;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lss/ab;->d:Lss/ab;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_1
        -0x1dfc3f26 -> :sswitch_0
        0x4b88569 -> :sswitch_3
        0x4c38896 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lss/ab;
    .locals 1

    const-class v0, Lss/ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lss/ab;

    return-object v0
.end method

.method public static values()[Lss/ab;
    .locals 1

    sget-object v0, Lss/ab;->f:[Lss/ab;

    invoke-virtual {v0}, [Lss/ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lss/ab;

    return-object v0
.end method
