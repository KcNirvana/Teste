.class synthetic Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$1;
.super Ljava/lang/Object;
.source "SubtitleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/subtitle/SubtitleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$video$galleryplus$subtitle$SubtitleUtil$SubtitleSizeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->values()[Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$1;->$SwitchMap$com$miui$video$galleryplus$subtitle$SubtitleUtil$SubtitleSizeType:[I

    :try_start_0
    sget-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$1;->$SwitchMap$com$miui$video$galleryplus$subtitle$SubtitleUtil$SubtitleSizeType:[I

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->X_SMALL:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$1;->$SwitchMap$com$miui$video$galleryplus$subtitle$SubtitleUtil$SubtitleSizeType:[I

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->MEDIUM:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$1;->$SwitchMap$com$miui$video$galleryplus$subtitle$SubtitleUtil$SubtitleSizeType:[I

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->LARGE:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
