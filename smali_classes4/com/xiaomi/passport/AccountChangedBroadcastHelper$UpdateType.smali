.class public final enum Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;
.super Ljava/lang/Enum;
.source "AccountChangedBroadcastHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/AccountChangedBroadcastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

.field public static final enum POST_ADD:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

.field public static final enum POST_REFRESH:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

.field public static final enum POST_REMOVE:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

.field public static final enum PRE_ADD:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

.field public static final enum PRE_REMOVE:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const-string v1, "PRE_ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->PRE_ADD:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    new-instance v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const-string v1, "POST_ADD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->POST_ADD:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    new-instance v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const-string v1, "POST_REFRESH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->POST_REFRESH:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    new-instance v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const-string v1, "PRE_REMOVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->PRE_REMOVE:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    new-instance v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const-string v1, "POST_REMOVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->POST_REMOVE:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->PRE_ADD:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->POST_ADD:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->POST_REFRESH:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->PRE_REMOVE:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->POST_REMOVE:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->$VALUES:[Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->$VALUES:[Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    return-object v0
.end method
