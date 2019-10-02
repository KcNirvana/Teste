.class public final enum Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;
.super Ljava/lang/Enum;
.source "AppUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/update/AppUpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

.field public static final enum ALWAYS:Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

.field public static final enum DELAY:Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;->ALWAYS:Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    new-instance v0, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    const-string v1, "DELAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;->DELAY:Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    sget-object v1, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;->ALWAYS:Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;->DELAY:Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;->$VALUES:[Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;
    .locals 1

    const-class v0, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;
    .locals 1

    sget-object v0, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;->$VALUES:[Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    invoke-virtual {v0}, [Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    return-object v0
.end method
