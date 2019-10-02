.class Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;
.super Ljava/lang/Object;
.source "DiracUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuildHelper"
.end annotation


# static fields
.field public static IS_ALPHA_BUILD:Z

.field public static IS_GEMINI:Z

.field public static IS_HONGMI_TWO:Z

.field public static IS_HONGMI_TWOS_LTE_MTK:Z

.field public static IS_HONGMI_TWO_A:Z

.field public static IS_HONGMI_TWO_S:Z

.field public static IS_MI2A:Z

.field public static IS_SONG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_ALPHA_BUILD:Z

    sput-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_ALPHA_BUILD:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_GEMINI:Z

    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "IS_MI2A"

    sget-boolean v2, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_MI2A:Z

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->getStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_MI2A:Z

    const-string v1, "IS_HONGMI_TWO"

    sget-boolean v2, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWO:Z

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->getStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWO:Z

    const-string v1, "IS_HONGMI_TWO_A"

    sget-boolean v2, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWO_A:Z

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->getStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWO_A:Z

    const-string v1, "IS_HONGMI_TWO_S"

    sget-boolean v2, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWO_S:Z

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->getStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWO_S:Z

    const-string v1, "IS_HONGMI_TWOS_LTE_MTK"

    sget-boolean v2, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWOS_LTE_MTK:Z

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->getStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWOS_LTE_MTK:Z

    const-string v0, "song"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_SONG:Z

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->getSystemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_ALPHA_BUILD:Z

    :cond_0
    sget-object v0, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "gemini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_GEMINI:Z

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->getSystemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "DiracUtils"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method

.method private static getSystemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "miui.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DiracUtils"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
