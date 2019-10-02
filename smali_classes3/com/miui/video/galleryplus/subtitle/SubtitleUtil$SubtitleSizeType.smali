.class public final enum Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;
.super Ljava/lang/Enum;
.source "SubtitleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/subtitle/SubtitleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubtitleSizeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

.field public static final enum LARGE:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

.field public static final enum MEDIUM:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

.field public static final enum SMALL:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

.field public static final enum X_SMALL:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    const-string v1, "X_SMALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->X_SMALL:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    new-instance v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    const-string v1, "SMALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->SMALL:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    new-instance v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    const-string v1, "MEDIUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->MEDIUM:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    new-instance v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    const-string v1, "LARGE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->LARGE:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->X_SMALL:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->SMALL:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->MEDIUM:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->LARGE:Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->$VALUES:[Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;
    .locals 1

    const-class v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;
    .locals 1

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->$VALUES:[Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    invoke-virtual {v0}, [Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/galleryplus/subtitle/SubtitleUtil$SubtitleSizeType;

    return-object v0
.end method
