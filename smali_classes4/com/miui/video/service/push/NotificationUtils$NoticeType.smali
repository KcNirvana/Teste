.class public final enum Lcom/miui/video/service/push/NotificationUtils$NoticeType;
.super Ljava/lang/Enum;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/push/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoticeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/service/push/NotificationUtils$NoticeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/service/push/NotificationUtils$NoticeType;

.field public static final enum TYPE_LIGHTS:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

.field public static final enum TYPE_NORMAL:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

.field public static final enum TYPE_SOUNDS:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

.field public static final enum TYPE_SOUNDS_VIBRATE:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

.field public static final enum TYPE_VIBRATE:Lcom/miui/video/service/push/NotificationUtils$NoticeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    const-string v1, "TYPE_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/service/push/NotificationUtils$NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->TYPE_NORMAL:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    new-instance v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    const-string v1, "TYPE_LIGHTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/service/push/NotificationUtils$NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->TYPE_LIGHTS:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    new-instance v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    const-string v1, "TYPE_SOUNDS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/video/service/push/NotificationUtils$NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->TYPE_SOUNDS:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    new-instance v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    const-string v1, "TYPE_VIBRATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/video/service/push/NotificationUtils$NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->TYPE_VIBRATE:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    new-instance v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    const-string v1, "TYPE_SOUNDS_VIBRATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/video/service/push/NotificationUtils$NoticeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->TYPE_SOUNDS_VIBRATE:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    sget-object v1, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->TYPE_NORMAL:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->TYPE_LIGHTS:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->TYPE_SOUNDS:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->TYPE_VIBRATE:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->TYPE_SOUNDS_VIBRATE:Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->$VALUES:[Lcom/miui/video/service/push/NotificationUtils$NoticeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/service/push/NotificationUtils$NoticeType;
    .locals 1

    const-class v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/service/push/NotificationUtils$NoticeType;
    .locals 1

    sget-object v0, Lcom/miui/video/service/push/NotificationUtils$NoticeType;->$VALUES:[Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    invoke-virtual {v0}, [Lcom/miui/video/service/push/NotificationUtils$NoticeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/service/push/NotificationUtils$NoticeType;

    return-object v0
.end method
