.class public final Lcom/squareup/okhttp/internal/spdy/Header;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RESPONSE_STATUS:La/j;

.field public static final TARGET_AUTHORITY:La/j;

.field public static final TARGET_HOST:La/j;

.field public static final TARGET_METHOD:La/j;

.field public static final TARGET_PATH:La/j;

.field public static final TARGET_SCHEME:La/j;

.field public static final VERSION:La/j;


# instance fields
.field final hpackSize:I

.field public final name:La/j;

.field public final value:La/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":status"

    invoke-static {v0}, La/j;->a(Ljava/lang/String;)La/j;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:La/j;

    const-string v0, ":method"

    invoke-static {v0}, La/j;->a(Ljava/lang/String;)La/j;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_METHOD:La/j;

    const-string v0, ":path"

    invoke-static {v0}, La/j;->a(Ljava/lang/String;)La/j;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_PATH:La/j;

    const-string v0, ":scheme"

    invoke-static {v0}, La/j;->a(Ljava/lang/String;)La/j;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_SCHEME:La/j;

    const-string v0, ":authority"

    invoke-static {v0}, La/j;->a(Ljava/lang/String;)La/j;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:La/j;

    const-string v0, ":host"

    invoke-static {v0}, La/j;->a(Ljava/lang/String;)La/j;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_HOST:La/j;

    const-string v0, ":version"

    invoke-static {v0}, La/j;->a(Ljava/lang/String;)La/j;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Header;->VERSION:La/j;

    return-void
.end method

.method public constructor <init>(La/j;La/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Header;->name:La/j;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/Header;->value:La/j;

    invoke-virtual {p1}, La/j;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, La/j;->e()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    return-void
.end method

.method public constructor <init>(La/j;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, La/j;->a(Ljava/lang/String;)La/j;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(La/j;La/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, La/j;->a(Ljava/lang/String;)La/j;

    move-result-object v0

    invoke-static {p2}, La/j;->a(Ljava/lang/String;)La/j;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(La/j;La/j;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/squareup/okhttp/internal/spdy/Header;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Header;->name:La/j;

    iget-object v2, p1, Lcom/squareup/okhttp/internal/spdy/Header;->name:La/j;

    invoke-virtual {v1, v2}, La/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Header;->value:La/j;

    iget-object v2, p1, Lcom/squareup/okhttp/internal/spdy/Header;->value:La/j;

    invoke-virtual {v1, v2}, La/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Header;->name:La/j;

    invoke-virtual {v0}, La/j;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Header;->value:La/j;

    invoke-virtual {v1}, La/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Header;->name:La/j;

    invoke-virtual {v3}, La/j;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Header;->value:La/j;

    invoke-virtual {v3}, La/j;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
