.class public final enum Lcom/xiaomi/j/a/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/j/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/j/a/g;

.field public static final enum b:Lcom/xiaomi/j/a/g;

.field public static final enum c:Lcom/xiaomi/j/a/g;

.field public static final enum d:Lcom/xiaomi/j/a/g;

.field public static final enum e:Lcom/xiaomi/j/a/g;

.field public static final enum f:Lcom/xiaomi/j/a/g;

.field public static final enum g:Lcom/xiaomi/j/a/g;

.field public static final enum h:Lcom/xiaomi/j/a/g;

.field public static final enum i:Lcom/xiaomi/j/a/g;

.field private static final synthetic l:[Lcom/xiaomi/j/a/g;


# instance fields
.field public final j:Ljava/lang/String;

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/xiaomi/j/a/g;

    const-string v1, "COMMAND_REGISTER"

    const-string v2, "register"

    const/16 v3, 0xbb9

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/xiaomi/j/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/j/a/g;->a:Lcom/xiaomi/j/a/g;

    new-instance v0, Lcom/xiaomi/j/a/g;

    const-string v1, "COMMAND_UNREGISTER"

    const-string v2, "unregister"

    const/16 v3, 0xbba

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/xiaomi/j/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/j/a/g;->b:Lcom/xiaomi/j/a/g;

    new-instance v0, Lcom/xiaomi/j/a/g;

    const-string v1, "COMMAND_SET_ALIAS"

    const-string v2, "set-alias"

    const/16 v3, 0xbbb

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/xiaomi/j/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/j/a/g;->c:Lcom/xiaomi/j/a/g;

    new-instance v0, Lcom/xiaomi/j/a/g;

    const-string v1, "COMMAND_UNSET_ALIAS"

    const-string v2, "unset-alias"

    const/16 v3, 0xbbc

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/xiaomi/j/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/j/a/g;->d:Lcom/xiaomi/j/a/g;

    new-instance v0, Lcom/xiaomi/j/a/g;

    const-string v1, "COMMAND_SET_ACCOUNT"

    const-string v2, "set-account"

    const/16 v3, 0xbbd

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaomi/j/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/j/a/g;->e:Lcom/xiaomi/j/a/g;

    new-instance v0, Lcom/xiaomi/j/a/g;

    const-string v1, "COMMAND_UNSET_ACCOUNT"

    const/4 v2, 0x5

    const-string v3, "unset-account"

    const/16 v4, 0xbbe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/j/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/j/a/g;->f:Lcom/xiaomi/j/a/g;

    new-instance v0, Lcom/xiaomi/j/a/g;

    const-string v1, "COMMAND_SUBSCRIBE_TOPIC"

    const/4 v2, 0x6

    const-string v3, "subscribe-topic"

    const/16 v4, 0xbbf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/j/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/j/a/g;->g:Lcom/xiaomi/j/a/g;

    new-instance v0, Lcom/xiaomi/j/a/g;

    const-string v1, "COMMAND_UNSUBSCRIBE_TOPIC"

    const/4 v2, 0x7

    const-string v3, "unsubscibe-topic"

    const/16 v4, 0xbc0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/j/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/j/a/g;->h:Lcom/xiaomi/j/a/g;

    new-instance v0, Lcom/xiaomi/j/a/g;

    const-string v1, "COMMAND_SET_ACCEPT_TIME"

    const/16 v2, 0x8

    const-string v3, "accept-time"

    const/16 v4, 0xbc1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/j/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/j/a/g;->i:Lcom/xiaomi/j/a/g;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/xiaomi/j/a/g;

    sget-object v1, Lcom/xiaomi/j/a/g;->a:Lcom/xiaomi/j/a/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/j/a/g;->b:Lcom/xiaomi/j/a/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/j/a/g;->c:Lcom/xiaomi/j/a/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/j/a/g;->d:Lcom/xiaomi/j/a/g;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/j/a/g;->e:Lcom/xiaomi/j/a/g;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/j/a/g;->f:Lcom/xiaomi/j/a/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/j/a/g;->g:Lcom/xiaomi/j/a/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/j/a/g;->h:Lcom/xiaomi/j/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/j/a/g;->i:Lcom/xiaomi/j/a/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/j/a/g;->l:[Lcom/xiaomi/j/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    iput p4, p0, Lcom/xiaomi/j/a/g;->k:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/j/a/g;->values()[Lcom/xiaomi/j/a/g;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, v4, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v0, v4, Lcom/xiaomi/j/a/g;->k:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/j/a/g;
    .locals 1

    const-class v0, Lcom/xiaomi/j/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/j/a/g;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/j/a/g;
    .locals 1

    sget-object v0, Lcom/xiaomi/j/a/g;->l:[Lcom/xiaomi/j/a/g;

    invoke-virtual {v0}, [Lcom/xiaomi/j/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/j/a/g;

    return-object v0
.end method
