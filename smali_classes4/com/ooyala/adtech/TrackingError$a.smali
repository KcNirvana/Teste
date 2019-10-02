.class final enum Lcom/ooyala/adtech/TrackingError$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/TrackingError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/adtech/TrackingError$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic B:[Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum a:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum b:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum c:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum d:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum e:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum f:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum g:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum h:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum i:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum j:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum k:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum l:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum m:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum n:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum o:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum p:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum q:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum r:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum s:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum t:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum u:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum v:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum w:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum x:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum y:Lcom/ooyala/adtech/TrackingError$a;

.field public static final enum z:Lcom/ooyala/adtech/TrackingError$a;


# instance fields
.field A:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "INVALID_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->a:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "XML_PARSING_ERROR"

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-direct {v0, v1, v3, v4}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->b:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "VAST_VALIDATION_ERROR"

    const/4 v4, 0x2

    const/16 v5, 0x65

    invoke-direct {v0, v1, v4, v5}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->c:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "VAST_RESPONSE_ERROR"

    const/4 v5, 0x3

    const/16 v6, 0x66

    invoke-direct {v0, v1, v5, v6}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->d:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "AD_TYPE_NOT_SUPPORTED"

    const/4 v6, 0x4

    const/16 v7, 0xc8

    invoke-direct {v0, v1, v6, v7}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->e:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "AD_LINEARITY_ERROR"

    const/4 v7, 0x5

    const/16 v8, 0xc9

    invoke-direct {v0, v1, v7, v8}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->f:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "AD_DURATION_ERROR"

    const/4 v8, 0x6

    const/16 v9, 0xca

    invoke-direct {v0, v1, v8, v9}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->g:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "AD_SIZE_ERROR"

    const/4 v9, 0x7

    const/16 v10, 0xcb

    invoke-direct {v0, v1, v9, v10}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->h:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "AD_CATEGORY_MISSING_ERROR"

    const/16 v10, 0x8

    const/16 v11, 0xcc

    invoke-direct {v0, v1, v10, v11}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->i:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "WRAPPER_ERROR"

    const/16 v11, 0x9

    const/16 v12, 0x12c

    invoke-direct {v0, v1, v11, v12}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->j:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "WRAPPER_TIMEOUT_ERROR"

    const/16 v12, 0xa

    const/16 v13, 0x12d

    invoke-direct {v0, v1, v12, v13}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->k:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "WRAPPER_LIMIT_REACHED_ERROR"

    const/16 v13, 0xb

    const/16 v14, 0x12e

    invoke-direct {v0, v1, v13, v14}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->l:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "NO_VAST_RESPONSE_ERROR"

    const/16 v14, 0xc

    const/16 v15, 0x12f

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->m:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "INLINE_AD_DISPLAY_TIMEOUT"

    const/16 v15, 0xd

    const/16 v14, 0x130

    invoke-direct {v0, v1, v15, v14}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->n:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "GENERAL_LINEAR_ERROR"

    const/16 v14, 0xe

    const/16 v15, 0x190

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->o:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "LINEAR_MEDIA_FILE_NOT_FOUND_ERROR"

    const/16 v15, 0xf

    const/16 v14, 0x191

    invoke-direct {v0, v1, v15, v14}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->p:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "MEDIA_FILE_TIMEOUT_ERROR"

    const/16 v14, 0x10

    const/16 v15, 0x192

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->q:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "NO_SUPPORTED_MEDIA_FILE_FOUND_ERROR"

    const/16 v14, 0x11

    const/16 v15, 0x193

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->r:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "MEDIA_FILE_DISPLAY_ERROR"

    const/16 v14, 0x12

    const/16 v15, 0x195

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->s:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "CONDITIONAL_AD_REJECTED_ERROR"

    const/16 v14, 0x13

    const/16 v15, 0x198

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->t:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "INTERACTIVE_UNIT_NOT_EXECUTED_ERROR"

    const/16 v14, 0x14

    const/16 v15, 0x199

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->u:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "VERIFICATION_UNIT_NOT_EXECUTED_ERROR"

    const/16 v14, 0x15

    const/16 v15, 0x19a

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->v:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "GENERAL_NON_LINEAR_ERROR"

    const/16 v14, 0x16

    const/16 v15, 0x1f4

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->w:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "NON_LINEAR_MEDIA_FILE_NOT_FOUND_ERROR"

    const/16 v14, 0x17

    const/16 v15, 0x1f6

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->x:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "NO_SUPPORTED_NON_LINEAR_RESOURCE_FOUND_ERROR"

    const/16 v14, 0x18

    const/16 v15, 0x1f7

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->y:Lcom/ooyala/adtech/TrackingError$a;

    new-instance v0, Lcom/ooyala/adtech/TrackingError$a;

    const-string v1, "UNDEFINED_ERROR"

    const/16 v14, 0x19

    const/16 v15, 0x384

    invoke-direct {v0, v1, v14, v15}, Lcom/ooyala/adtech/TrackingError$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->z:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/ooyala/adtech/TrackingError$a;

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->a:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->b:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->c:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->d:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->e:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->f:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->g:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->h:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->i:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->j:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->k:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->l:Lcom/ooyala/adtech/TrackingError$a;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->m:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->n:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->o:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->p:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->q:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->r:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->s:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->t:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->u:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->v:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->w:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->x:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->y:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/TrackingError$a;->z:Lcom/ooyala/adtech/TrackingError$a;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/ooyala/adtech/TrackingError$a;->B:[Lcom/ooyala/adtech/TrackingError$a;

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

    iput p3, p0, Lcom/ooyala/adtech/TrackingError$a;->A:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingError$a;
    .locals 1

    const-class v0, Lcom/ooyala/adtech/TrackingError$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/adtech/TrackingError$a;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/adtech/TrackingError$a;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/TrackingError$a;->B:[Lcom/ooyala/adtech/TrackingError$a;

    invoke-virtual {v0}, [Lcom/ooyala/adtech/TrackingError$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/adtech/TrackingError$a;

    return-object v0
.end method
