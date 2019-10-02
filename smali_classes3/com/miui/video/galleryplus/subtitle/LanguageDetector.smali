.class public Lcom/miui/video/galleryplus/subtitle/LanguageDetector;
.super Ljava/lang/Object;
.source "LanguageDetector.java"


# static fields
.field private static final CHINESE_CODES:[Ljava/lang/String;

.field private static final CHS_DEF_TIP:Ljava/lang/String; = "\u4e2d\u6587"

.field private static final CHS_LESS_TIPS_REGEXES:Ljava/lang/String; = ".*((\u6c49|\u56fd|\u534e)(\u6587|\u8bed)).*"

.field private static final CHS_MORE_TIPS_REGEXES:Ljava/lang/String; = ".*(chs|chn|cn|\u666e\u901a\u8bdd|\u53f0\u6e7e\u8bdd|\u7ca4\u8bed|(\u4e2d|\u6c49|\u6f22|\u570b|\u56fd|\u534e|\u83ef)(\u6587|\u8a9e|\u8bed)?(\u7b80|\u7c21)(\u4f53|\u9ad4)?|(\u7b80|\u7c21)(\u4f53|\u9ad4)?(\u4e2d|\u6c49|\u6f22|\u570b|\u56fd|\u534e|\u83ef)(\u6587|\u8a9e|\u8bed)?|(\u7b80|\u7c21)(\u4f53|\u9ad4)|chinese(\\W|_)*simplified|simplified(\\W|_)*chinese).*|chinese"

.field private static final CHT_LESS_TIPS_REGEXES:Ljava/lang/String; = ".*((\u6f22|\u570b|\u83ef)(\u6587|\u8a9e)).*"

.field private static final CHT_MORE_TIPS_REGEXES:Ljava/lang/String; = ".*(cht|(\u4e2d|\u6c49|\u6f22|\u570b|\u56fd|\u534e|\u83ef)(\u6587|\u8a9e|\u8bed)?\u7e41(\u4f53|\u9ad4)?|\u7e41(\u4f53|\u9ad4)?(\u4e2d|\u6c49|\u6f22|\u570b|\u56fd|\u534e|\u83ef)(\u6587|\u8a9e|\u8bed)?|\u7e41(\u4f53|\u9ad4)|chinese(\\W|_)*traditional|traditional(\\W|_)*chinese).*"

.field private static final CH_NUMBER:I = 0x2

.field private static final DUAL_TIPS_REGEX:Ljava/lang/String; = "(((\u4e2d|\u6c49|\u56fd|\u534e|\u7e41|\u7b80)|(\u6f22|\u570b|\u83ef)|\u82f1|(\u97e9|\u97d3)|\u65e5|\u6cd5)((\u4e2d|\u6c49|\u56fd|\u534e)|(\u6f22|\u570b|\u83ef)|\u82f1|(\u97e9|\u97d3)|\u65e5|\u6cd5)+)"

.field private static FAST_INTERNAL_SUB_LANGUAGE:[Ljava/lang/CharSequence; = null

.field private static FAST_INTERNAL_SUB_LANGUAGE_CODES:[Ljava/lang/CharSequence; = null

.field private static FAST_LANGUAGE:[Ljava/lang/CharSequence; = null

.field private static final FAST_LANGUAGE_CODES:[Ljava/lang/String;

.field private static final ISO639_2_LANGUAGES_CHS:[Ljava/lang/String;

.field private static final ISO639_2_LANGUAGES_CHT:[Ljava/lang/String;

.field private static final ISO639_2_LANGUAGES_ENG:[Ljava/lang/String;

.field private static final ISO639_2_LANGUAGE_CODES:[Ljava/lang/String;

.field private static final LANGUAGE_SEPERATE:Ljava/lang/String; = "&"

.field private static final LANGUAGE_UNKNOWN:Ljava/lang/String; = ""

.field private static LANG_DETECT:[Ljava/lang/CharSequence; = null

.field private static final MAX_LANGUAGE_CODE_CACHE_NUM:I = 0x14

.field private static final OTHER_TIPS_REGEXES:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "com.miui.video.galleryplus.subtitle.LanguageDetector"

.field private static instance:Lcom/miui/video/galleryplus/subtitle/LanguageDetector;


# instance fields
.field private mLangCodeCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLangCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v0, "\u4e2d"

    const-string v1, "\u7e41"

    const-string v2, "\u82f1"

    const-string v3, "\u97e9"

    const-string v4, "\u65e5"

    const-string v5, "\u6cd5"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHS:[Ljava/lang/String;

    const-string v1, "\u4e2d"

    const-string v2, "\u7e41"

    const-string v3, "\u82f1"

    const-string v4, "\u97d3"

    const-string v5, "\u65e5"

    const-string v6, "\u6cd5"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHT:[Ljava/lang/String;

    const-string v1, "Chinese-S"

    const-string v2, "Chinese-T"

    const-string v3, "English"

    const-string v4, "Korean"

    const-string v5, "Japanese"

    const-string v6, "French"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_ENG:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    sget-object v2, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_ENG:[Ljava/lang/String;

    aget-object v2, v2, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->CHINESE_CODES:[Ljava/lang/String;

    const-string v5, "chi"

    const-string v6, "zho"

    const-string v7, "eng"

    const-string v8, "kor"

    const-string v9, "jpn"

    const-string v10, "fre"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGE_CODES:[Ljava/lang/String;

    const-string v1, ".*(((\\W|_)+en(g)?(\\W|_)+)|english|\u82f1(\u6587|\u8a9e|\u8bed)).*"

    const-string v2, ".*(kor|korean|(\u97e9|\u97d3)(\u6587|\u8a9e|\u8bed)).*"

    const-string v5, ".*(jpn|japanese|\u65e5(\u6587|\u8a9e|\u8bed)|\u65e5\u672c\u8bed).*"

    const-string v6, ".*(fre|french|\u6cd5(\u6587|\u8a9e|\u8bed)).*"

    filled-new-array {v1, v2, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->OTHER_TIPS_REGEXES:[Ljava/lang/String;

    const-string v5, "und"

    const-string v6, "ger"

    const-string v7, "eng"

    const-string v8, "spa"

    const-string v9, "gre"

    const-string v10, "fre"

    const-string v11, "cro"

    const-string v12, "ita"

    const-string v13, "dut"

    const-string v14, "pol"

    const-string v15, "por"

    const-string v16, "rus"

    const-string v17, "rom"

    const-string v18, "swe"

    const-string v19, "ara"

    const-string v20, "chi"

    const-string v21, "jpn"

    const-string v22, "kor"

    const-string v23, "fas"

    const-string v24, "fin"

    const-string v25, "nor"

    filled-new-array/range {v5 .. v25}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->FAST_LANGUAGE_CODES:[Ljava/lang/String;

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, ""

    aput-object v2, v1, v3

    const-string v2, "\u5fb7"

    aput-object v2, v1, v4

    const-string v2, "\u82f1"

    aput-object v2, v1, v0

    const-string v2, "\u897f"

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "\u5e0c\u814a"

    const/4 v6, 0x4

    aput-object v2, v1, v6

    const-string v2, "\u6cd5"

    const/4 v7, 0x5

    aput-object v2, v1, v7

    const-string v2, "\u514b\u7f57\u5730\u4e9a"

    const/4 v8, 0x6

    aput-object v2, v1, v8

    const-string v2, "\u610f"

    const/4 v9, 0x7

    aput-object v2, v1, v9

    const-string v2, "\u8377"

    const/16 v9, 0x8

    aput-object v2, v1, v9

    const-string v2, "\u6ce2\u5170"

    const/16 v9, 0x9

    aput-object v2, v1, v9

    const-string v2, "\u8461\u8404\u7259"

    const/16 v9, 0xa

    aput-object v2, v1, v9

    const-string v2, "\u4fc4"

    const/16 v9, 0xb

    aput-object v2, v1, v9

    const-string v2, "\u7f57\u9a6c\u5c3c\u4e9a"

    const/16 v9, 0xc

    aput-object v2, v1, v9

    const-string v2, "\u745e\u5178"

    const/16 v9, 0xd

    aput-object v2, v1, v9

    const-string v2, "\u963f\u62c9\u4f2f"

    const/16 v9, 0xe

    aput-object v2, v1, v9

    const-string v2, "\u4e2d"

    const/16 v9, 0xf

    aput-object v2, v1, v9

    const-string v2, "\u65e5"

    const/16 v9, 0x10

    aput-object v2, v1, v9

    const-string v2, "\u97e9"

    const/16 v9, 0x11

    aput-object v2, v1, v9

    const-string v2, "\u6ce2\u65af"

    const/16 v9, 0x12

    aput-object v2, v1, v9

    const-string v2, "\u82ac\u5170"

    const/16 v9, 0x13

    aput-object v2, v1, v9

    const-string v2, "\u632a\u5a01"

    const/16 v9, 0x14

    aput-object v2, v1, v9

    sput-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->FAST_LANGUAGE:[Ljava/lang/CharSequence;

    new-array v1, v0, [Ljava/lang/CharSequence;

    const-string v2, "\u82f1\u4e0a\u4e2d\u4e0b"

    aput-object v2, v1, v3

    const-string v2, "\u4e2d\u4e0a\u82f1\u4e0b"

    aput-object v2, v1, v4

    sput-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->FAST_INTERNAL_SUB_LANGUAGE_CODES:[Ljava/lang/CharSequence;

    new-array v1, v0, [Ljava/lang/CharSequence;

    const-string v2, "\u82f1&\u4e2d"

    aput-object v2, v1, v3

    const-string v2, "\u4e2d&\u82f1"

    aput-object v2, v1, v4

    sput-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->FAST_INTERNAL_SUB_LANGUAGE:[Ljava/lang/CharSequence;

    new-array v1, v8, [Ljava/lang/CharSequence;

    const-string v2, "\u4e2d"

    aput-object v2, v1, v3

    const-string v2, "\u7e41"

    aput-object v2, v1, v4

    const-string v2, "\u82f1"

    aput-object v2, v1, v0

    const-string v0, "\u97e9"

    aput-object v0, v1, v5

    const-string v0, "\u65e5"

    aput-object v0, v1, v6

    const-string v0, "\u6cd5"

    aput-object v0, v1, v7

    sput-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->LANG_DETECT:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->instance:Lcom/miui/video/galleryplus/subtitle/LanguageDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeMap:Ljava/util/Map;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeCache:Landroid/util/LruCache;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->initLanguageCodeMap()V

    return-void
.end method

.method private fastDetect(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->FAST_LANGUAGE_CODES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->FAST_LANGUAGE_CODES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->FAST_LANGUAGE:[Ljava/lang/CharSequence;

    aget-object p1, p1, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method private fastDetectInternalSub(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->FAST_INTERNAL_SUB_LANGUAGE_CODES:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->FAST_INTERNAL_SUB_LANGUAGE_CODES:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->FAST_INTERNAL_SUB_LANGUAGE:[Ljava/lang/CharSequence;

    aget-object p1, p1, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/video/galleryplus/subtitle/LanguageDetector;
    .locals 2

    const-class v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->instance:Lcom/miui/video/galleryplus/subtitle/LanguageDetector;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;

    invoke-direct {v1}, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;-><init>()V

    sput-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->instance:Lcom/miui/video/galleryplus/subtitle/LanguageDetector;

    :cond_0
    sget-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->instance:Lcom/miui/video/galleryplus/subtitle/LanguageDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLanguageByCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private initLanguageCodeMap()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGE_CODES:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Locale is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    sget-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_ENG:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_5

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v1, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeMap:Ljava/util/Map;

    sget-object v3, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGE_CODES:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_ENG:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHT:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_5

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v1, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeMap:Ljava/util/Map;

    sget-object v3, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGE_CODES:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHT:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    sget-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHS:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_5

    :goto_4
    if-ge v2, v0, :cond_5

    iget-object v1, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeMap:Ljava/util/Map;

    sget-object v3, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGE_CODES:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGE_CODES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", langs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method


# virtual methods
.method public detectInternalSubLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->fastDetectInternalSub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->detectLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->detectLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->detectLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, ""

    return-object p1
.end method

.method public detectLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->fastDetect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->getLanguageByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->getLanguageByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getLanguageByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->LANG_DETECT:[Ljava/lang/CharSequence;

    const-string v2, ".*(chs|chn|cn|\u666e\u901a\u8bdd|\u53f0\u6e7e\u8bdd|\u7ca4\u8bed|(\u4e2d|\u6c49|\u6f22|\u570b|\u56fd|\u534e|\u83ef)(\u6587|\u8a9e|\u8bed)?(\u7b80|\u7c21)(\u4f53|\u9ad4)?|(\u7b80|\u7c21)(\u4f53|\u9ad4)?(\u4e2d|\u6c49|\u6f22|\u570b|\u56fd|\u534e|\u83ef)(\u6587|\u8a9e|\u8bed)?|(\u7b80|\u7c21)(\u4f53|\u9ad4)|chinese(\\W|_)*simplified|simplified(\\W|_)*chinese).*|chinese"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v2, ".*((\u6c49|\u56fd|\u534e)(\u6587|\u8bed)).*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    const-string v2, ".*(cht|(\u4e2d|\u6c49|\u6f22|\u570b|\u56fd|\u534e|\u83ef)(\u6587|\u8a9e|\u8bed)?\u7e41(\u4f53|\u9ad4)?|\u7e41(\u4f53|\u9ad4)?(\u4e2d|\u6c49|\u6f22|\u570b|\u56fd|\u534e|\u83ef)(\u6587|\u8a9e|\u8bed)?|\u7e41(\u4f53|\u9ad4)|chinese(\\W|_)*traditional|traditional(\\W|_)*chinese).*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    aget-object v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string v2, ".*((\u6f22|\u570b|\u83ef)(\u6587|\u8a9e)).*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "\u4e2d\u6587"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    sget-object v2, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->OTHER_TIPS_REGEXES:[Ljava/lang/String;

    array-length v2, v2

    array-length v5, v1

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    if-ne v2, v5, :cond_6

    sget-object v2, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->OTHER_TIPS_REGEXES:[Ljava/lang/String;

    array-length v2, v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_8

    sget-object v7, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->OTHER_TIPS_REGEXES:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    add-int/lit8 v7, v5, 0x2

    aget-object v7, v1, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    const-string v2, "(((\u4e2d|\u6c49|\u56fd|\u534e|\u7e41|\u7b80)|(\u6f22|\u570b|\u83ef)|\u82f1|(\u97e9|\u97d3)|\u65e5|\u6cd5)((\u4e2d|\u6c49|\u56fd|\u534e)|(\u6f22|\u570b|\u83ef)|\u82f1|(\u97e9|\u97d3)|\u65e5|\u6cd5)+)"

    invoke-static {v2, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :cond_9
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match is: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", number is: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", start: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", end: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_9

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v9, v1, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    aget-object v7, v1, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    aget-object v7, v1, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :sswitch_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v9, v1, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    aget-object v7, v1, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :sswitch_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v9, v1, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    aget-object v7, v1, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :sswitch_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    aget-object v7, v1, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :sswitch_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    aget-object v7, v1, v3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e2d -> :sswitch_5
        0x534e -> :sswitch_5
        0x56fd -> :sswitch_5
        0x570b -> :sswitch_4
        0x65e5 -> :sswitch_3
        0x6c49 -> :sswitch_5
        0x6cd5 -> :sswitch_2
        0x6f22 -> :sswitch_4
        0x7b80 -> :sswitch_5
        0x7c21 -> :sswitch_5
        0x7e41 -> :sswitch_4
        0x82f1 -> :sswitch_1
        0x83ef -> :sswitch_4
        0x97d3 -> :sswitch_0
        0x97e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public getSubLanguageType(ZLjava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_ENG:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHT:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x3

    return p1

    :cond_1
    sget-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHS:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_CHT:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->ISO639_2_LANGUAGES_ENG:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    xor-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x7

    return p1

    :cond_3
    const/16 p1, 0x9

    return p1

    :cond_4
    :goto_0
    xor-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x5

    return p1

    :cond_5
    :goto_1
    xor-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isChsSubtitle(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->CHINESE_CODES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public updateLocale()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->mLangCodeCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/subtitle/LanguageDetector;->initLanguageCodeMap()V

    return-void
.end method
