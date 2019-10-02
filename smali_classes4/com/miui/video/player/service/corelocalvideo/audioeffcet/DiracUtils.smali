.class public Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;
.super Ljava/lang/Object;
.source "DiracUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;
    }
.end annotation


# static fields
.field protected static final DIRAC_OFF:I = 0x0

.field protected static final DIRAC_ON:I = 0x1

.field public static final Field_DIRACSOUND_MODE_MOVIE:I = 0x1

.field public static final Field_DIRACSOUND_MODE_MUSIC:I = 0x0

.field public static final HIFI_MODE_OFF:I = 0x0

.field public static final HIFI_MODE_ON:I = 0x1

.field public static final ID_EM001:I = 0xf

.field public static final ID_EM007:I = 0x10

.field public static final ID_EM303:I = 0xd

.field public static final ID_EM304:I = 0xe

.field public static final ID_GENERAL_EARBUDS:I = 0x5

.field public static final ID_GENERAL_INEAR:I = 0x6

.field public static final ID_HM004:I = 0x11

.field public static final ID_MEP100:I = 0x1

.field public static final ID_MEP200:I = 0x2

.field public static final ID_MK101:I = 0x7

.field public static final ID_MK301:I = 0x8

.field public static final ID_MK303:I = 0x9

.field public static final ID_MO701:I = 0xa

.field public static final ID_MR102:I = 0xb

.field public static final ID_PISTON_100:I = 0x3

.field public static final ID_PISTON_200:I = 0x4

.field private static final KEY_LAST_HEADSET_TYPE:Ljava/lang/String; = "dirac_last_headset_type"

.field protected static final PARAM_KEY_DIRAC:Ljava/lang/String; = "dirac"

.field protected static final PARAM_KEY_DIRAC_ENABLED:Ljava/lang/String; = "dirac_enabled"

.field private static final PROPERTY_AUDIO_EFFECT:Ljava/lang/String; = "persist.audio.soundfx.type"

.field private static final PROPERTY_AUDIO_EFFECT_P:Ljava/lang/String; = "ro.vendor.audio.soundfx.type"

.field static final TAG:Ljava/lang/String; = "DiracUtils"

.field private static final VALUE_AUDIO_EFFECT_DIRAC:Ljava/lang/String; = "dirac"

.field private static final VALUE_AUDIO_EFFECT_MI:Ljava/lang/String; = "mi"

.field protected static final VAL_DEFAULT_HEADSET:I = 0x5

.field public static final VAL_EARBUDS:I = 0x1

.field public static final VAL_EM001:I = 0xf

.field public static final VAL_EM007:I = 0x10

.field public static final VAL_EM303:I = 0xd

.field public static final VAL_EM304:I = 0xe

.field public static final VAL_GENERAL_EARBUDS:I = 0x5

.field public static final VAL_GENERAL_INEAR:I = 0x6

.field public static final VAL_HEADSET_MAX:I = 0x11

.field public static final VAL_HEADSET_MIN:I = 0x1

.field public static final VAL_HM004:I = 0x11

.field public static final VAL_IN_EAR:I = 0x2

.field public static final VAL_MK101:I = 0x7

.field public static final VAL_MK301:I = 0x8

.field public static final VAL_MK303:I = 0x9

.field public static final VAL_MO701:I = 0xa

.field public static final VAL_MR102:I = 0xb

.field public static final VAL_OFF:I = 0x0

.field public static final VAL_PISTON_100:I = 0x3

.field public static final VAL_PISTON_200:I = 0x4

.field private static final VERSION_CODE_P:I = 0x1c

.field private static sHeadsetIdsAndTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs formatStd(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDiracState(Landroid/content/Context;)I
    .locals 3

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const-string v0, "dirac"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DiracUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DiracUtils"

    const-string v1, "refreshDiracState"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static isHeadsetType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x11

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportDirac(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "support_dirac"

    const-string v2, "bool"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isSupportHiFi()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.audio.hifi"

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "default_hifi_support=false"

    :cond_0
    const-string v2, "DiracUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ro.audio.hifi from reflect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static isUsingMiSound()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string v0, "ro.vendor.audio.soundfx.type"

    :goto_0
    const-string v1, "dirac"

    invoke-static {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "persist.audio.soundfx.type"

    goto :goto_0

    :goto_1
    const-string v1, "DiracUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsingMiSound audioEffect =    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static newInstance()Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;
    .locals 2

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->isUsingMiSound()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DiracUtils"

    const-string v1, "new MiSoundUtils."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundUtils;

    invoke-direct {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundUtils;-><init>()V

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_MI2A:Z

    if-eqz v0, :cond_1

    const-string v0, "DiracUtils"

    const-string v1, "new TaurusDiracUtils."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/TaurusDiracUtils;

    invoke-direct {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/TaurusDiracUtils;-><init>()V

    return-object v0

    :cond_1
    sget-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWO_A:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWO_S:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_HONGMI_TWOS_LTE_MTK:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "DiracUtils"

    const-string v1, "new WtDiracUtils."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/WtDiracUtils;

    invoke-direct {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/WtDiracUtils;-><init>()V

    return-object v0

    :cond_3
    sget-boolean v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils$BuildHelper;->IS_SONG:Z

    if-eqz v0, :cond_4

    const-string v0, "DiracUtils"

    const-string v1, "new SongDiracUtils."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;

    invoke-direct {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SongDiracUtils;-><init>()V

    return-object v0

    :cond_4
    const-string v0, "DiracUtils"

    const-string v1, "new PiscesDiracUtils."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;

    invoke-direct {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/PiscesDiracUtils;-><init>()V

    return-object v0
.end method

.method private static restoreLastHeadsetType(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dirac_last_headset_type"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method private static saveLastHeadsetType(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dirac_last_headset_type"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static setDiracState(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "DiracUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dirac state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->isHeadsetType(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad value, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const-string v0, "dirac"

    invoke-static {v0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->toParameter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DiracUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method protected static toParameter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, "%s=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->formatStd(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHeadseIdsAndTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->sHeadsetIdsAndTypes:Ljava/util/List;

    return-object v0
.end method

.method public getHeadsetType(Landroid/content/Context;)I
    .locals 2

    invoke-static {p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->getDiracState(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->isHeadsetType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->restoreLastHeadsetType(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMovieFieldValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMusicFieldValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->getDiracState(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setEnabled(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->getHeadsetType(Landroid/content/Context;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->setDiracState(Landroid/content/Context;I)V

    return-void
.end method

.method public setHeadsetType(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "DiracUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set headset type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->isHeadsetType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->setDiracState(Landroid/content/Context;I)V

    invoke-static {p1, p2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->saveLastHeadsetType(Landroid/content/Context;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad value, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHifiMode(I)V
    .locals 0

    return-void
.end method

.method public setLevel(Landroid/content/Context;IF)V
    .locals 3

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const-string v0, "diracband=%d;value=%f"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/DiracUtils;->formatStd(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string p1, "DiracUtils"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set EQ Level: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    return-void
.end method
