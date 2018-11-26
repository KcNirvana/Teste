.class public final enum Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic biZ:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bja:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bjb:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bjc:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bjd:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bjf:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bjg:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bjh:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bji:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bjj:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bjk:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum bjl:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;


# instance fields
.field private scheme:Ljava/lang/String;

.field private uriPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "HTTP"

    const-string/jumbo v2, "http"

    invoke-direct {v0, v1, v4, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjg:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "HTTPS"

    const-string/jumbo v2, "https"

    invoke-direct {v0, v1, v5, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjh:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "FILE"

    const-string/jumbo v2, "file"

    invoke-direct {v0, v1, v6, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "CONTENT"

    const-string/jumbo v2, "content"

    invoke-direct {v0, v1, v7, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjc:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "ASSETS"

    const-string/jumbo v2, "assets"

    invoke-direct {v0, v1, v8, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjb:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "DRAWABLE"

    const-string/jumbo v2, "drawable"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjd:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "PKG_ICON"

    const-string/jumbo v2, "pkg_icon"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjj:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "APK_ICON"

    const-string/jumbo v2, "apk_icon"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bja:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "FILE_ICON"

    const-string/jumbo v2, "file_icon"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjf:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "PKG_ICON_XSPACE"

    const-string/jumbo v2, "pkg_icon_xspace"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjk:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "PCK_ICON_MANAGED_PROFILE"

    const-string/jumbo v2, "pkg_icon_managed_profile"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bji:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjl:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjg:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjh:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjc:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjb:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjd:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjj:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bja:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjf:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjk:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bji:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjl:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->biZ:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->scheme:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    return-void
.end method

.method public static bFL(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-direct {v3, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bFN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bjl:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    return-object v0
.end method

.method private bFN(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    .locals 1

    const-class v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    return-object v0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    .locals 1

    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->biZ:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    return-object v0
.end method


# virtual methods
.method public bFK(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bFM(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bFN(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URI [%1$s] doesn\'t have expected scheme [%2$s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->scheme:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->uriPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
