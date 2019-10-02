.class Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;
.super Ljava/lang/Object;
.source "MiSoundWrapper.java"


# static fields
.field static final FILED_HEADSET_ID_EM001:Ljava/lang/String; = "MISOUND_HEADSET_EM001"

.field static final FILED_HEADSET_ID_EM007:Ljava/lang/String; = "MISOUND_HEADSET_EM007"

.field static final FILED_HEADSET_ID_HM004:Ljava/lang/String; = "MISOUND_HEADSET_HM004"

.field private static final METHOD_GET_HEADSET_TYPE:Ljava/lang/String; = "getHeadsetType"

.field private static final METHOD_GET_MOVIE:Ljava/lang/String; = "getMovie"

.field private static final METHOD_GET_MUSIC:Ljava/lang/String; = "getMusic"

.field private static final METHOD_RELEASE:Ljava/lang/String; = "release"

.field private static final METHOD_SET_HEADSET_TYPE:Ljava/lang/String; = "setHeadsetType"

.field private static final METHOD_SET_HIFI_MODE:Ljava/lang/String; = "setHifiMode"

.field private static final METHOD_SET_LEVEL:Ljava/lang/String; = "setLevel"

.field private static final METHOD_SET_MODE:Ljava/lang/String; = "setMode"

.field private static final METHOD_SET_MOVIE:Ljava/lang/String; = "setMovie"

.field private static final METHOD_SET_MUSIC:Ljava/lang/String; = "setMusic"

.field private static final MI_SOUND_CLASS_NAME:Ljava/lang/String; = "android.media.audiofx.MiSound"

.field private static final TAG:Ljava/lang/String; = "MiSoundWrapper"


# instance fields
.field private mField_DIRACSOUND_MODE_MOVIE:Ljava/lang/reflect/Field;

.field private mField_DIRACSOUND_MODE_MUSIC:Ljava/lang/reflect/Field;

.field private mMethodGetHeadsetType:Ljava/lang/reflect/Method;

.field private mMethodGetMovie:Ljava/lang/reflect/Method;

.field private mMethodGetMusic:Ljava/lang/reflect/Method;

.field private mMethodRelease:Ljava/lang/reflect/Method;

.field private mMethodSetHeadsetType:Ljava/lang/reflect/Method;

.field private mMethodSetHifiMode:Ljava/lang/reflect/Method;

.field private mMethodSetLevel:Ljava/lang/reflect/Method;

.field private mMethodSetMode:Ljava/lang/reflect/Method;

.field private mMethodSetMovie:Ljava/lang/reflect/Method;

.field private mMethodSetMusic:Ljava/lang/reflect/Method;

.field private final mMiSoundInstance:Ljava/lang/Object;


# direct methods
.method constructor <init>(II)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "android.media.audiofx.MiSound"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    :try_start_1
    const-string p1, "release"

    new-array p2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodRelease:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {p2, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    :try_start_2
    const-string p1, "setMusic"

    new-array p2, v5, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p2, v4

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetMusic:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {p2, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    :try_start_3
    const-string p1, "getMusic"

    new-array p2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodGetMusic:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {p2, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    :try_start_4
    const-string p1, "setMovie"

    new-array p2, v5, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p2, v4

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetMovie:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {p2, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    :try_start_5
    const-string p1, "getMovie"

    new-array p2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodGetMovie:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {p2, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    :try_start_6
    const-string p1, "setHeadsetType"

    new-array p2, v5, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p2, v4

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetHeadsetType:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {p2, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    :try_start_7
    const-string p1, "getHeadsetType"

    new-array p2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodGetHeadsetType:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {p2, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    :try_start_8
    const-string p1, "setLevel"

    new-array p2, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p2, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, p2, v5

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetLevel:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {p2, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    :try_start_9
    const-string p1, "setHifiMode"

    new-array p2, v5, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p2, v4

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetHifiMode:Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {p2, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8
    :try_start_a
    const-string p1, "setMode"

    new-array p2, v5, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p2, v4

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetMode:Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_9
    return-void

    :catch_a
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_b
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Not found android.media.audiofx.MiSound"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method getHeadsetType()I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodGetHeadsetType:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodGetHeadsetType:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_1
    :goto_1
    return v1
.end method

.method getMovie()I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodGetMovie:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodGetMovie:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_1
    :goto_1
    return v1
.end method

.method getMovieFieldValue()I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mField_DIRACSOUND_MODE_MOVIE:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mField_DIRACSOUND_MODE_MOVIE:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v1
.end method

.method getMusic()I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodGetMusic:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodGetMusic:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_1
    :goto_1
    return v1
.end method

.method getMusicFieldValue()I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mField_DIRACSOUND_MODE_MUSIC:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mField_DIRACSOUND_MODE_MUSIC:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, "IllegalArgumentException"

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "MiSoundWrapper"

    const-string v3, "IllegalAccessException"

    invoke-static {v2, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v1
.end method

.method isSupportType(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method release()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodRelease:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodRelease:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "MiSoundWrapper"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method setHeadsetType(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetHeadsetType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetHeadsetType:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method setHifiMode(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetHifiMode:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetHifiMode:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method setLevel(IF)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetLevel:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetLevel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "MiSoundWrapper"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method setMode(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetMode:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetMode:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method setMovie(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetMovie:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetMovie:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method setMusic(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetMusic:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMethodSetMusic:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/MiSoundWrapper;->mMiSoundInstance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "MiSoundWrapper"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method
