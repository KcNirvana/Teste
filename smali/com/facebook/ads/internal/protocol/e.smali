.class public final enum Lcom/facebook/ads/internal/protocol/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/protocol/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum b:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum c:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum d:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum e:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum f:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum g:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum h:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum i:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum j:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum k:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum l:Lcom/facebook/ads/internal/protocol/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum m:Lcom/facebook/ads/internal/protocol/e;

.field public static final enum n:Lcom/facebook/ads/internal/protocol/e;

.field private static final synthetic p:[Lcom/facebook/ads/internal/protocol/e;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->a:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "WEBVIEW_BANNER_LEGACY"

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->b:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "WEBVIEW_BANNER_50"

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->c:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "WEBVIEW_BANNER_90"

    const/4 v7, 0x3

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->d:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "WEBVIEW_BANNER_250"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v4, v9}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->e:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "WEBVIEW_INTERSTITIAL_UNKNOWN"

    const/16 v10, 0x64

    invoke-direct {v0, v1, v6, v10}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->f:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "WEBVIEW_INTERSTITIAL_HORIZONTAL"

    const/16 v10, 0x65

    invoke-direct {v0, v1, v8, v10}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->g:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "WEBVIEW_INTERSTITIAL_VERTICAL"

    const/16 v10, 0x66

    invoke-direct {v0, v1, v9, v10}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->h:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "WEBVIEW_INTERSTITIAL_TABLET"

    const/16 v10, 0x8

    const/16 v11, 0x67

    invoke-direct {v0, v1, v10, v11}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->i:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "NATIVE_UNKNOWN"

    const/16 v11, 0x9

    const/16 v12, 0xc8

    invoke-direct {v0, v1, v11, v12}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->j:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "NATIVE_BANNER"

    const/16 v12, 0xa

    const/16 v13, 0x1f4

    invoke-direct {v0, v1, v12, v13}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->k:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "NATIVE_250"

    const/16 v13, 0xb

    const/16 v14, 0xc9

    invoke-direct {v0, v1, v13, v14}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->l:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "REWARDED_VIDEO"

    const/16 v14, 0xc

    const/16 v15, 0x190

    invoke-direct {v0, v1, v14, v15}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->m:Lcom/facebook/ads/internal/protocol/e;

    new-instance v0, Lcom/facebook/ads/internal/protocol/e;

    const-string v1, "INSTREAM_VIDEO"

    const/16 v15, 0xd

    const/16 v14, 0x12c

    invoke-direct {v0, v1, v15, v14}, Lcom/facebook/ads/internal/protocol/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->n:Lcom/facebook/ads/internal/protocol/e;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/facebook/ads/internal/protocol/e;

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->a:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->b:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->c:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->d:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->e:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->f:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->g:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->h:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->i:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->j:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->k:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v12

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->l:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v13

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->m:Lcom/facebook/ads/internal/protocol/e;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->n:Lcom/facebook/ads/internal/protocol/e;

    aput-object v1, v0, v15

    sput-object v0, Lcom/facebook/ads/internal/protocol/e;->p:[Lcom/facebook/ads/internal/protocol/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/protocol/e;->o:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/e;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/protocol/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/protocol/e;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/internal/protocol/e;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/protocol/e;->p:[Lcom/facebook/ads/internal/protocol/e;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/protocol/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/protocol/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/protocol/e;->o:I

    return v0
.end method
