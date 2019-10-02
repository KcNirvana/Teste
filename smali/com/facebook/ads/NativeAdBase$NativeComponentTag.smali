.class public final enum Lcom/facebook/ads/NativeAdBase$NativeComponentTag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAdBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeComponentTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/NativeAdBase$NativeComponentTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_BODY:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_CALL_TO_ACTION:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_CHOICES_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_COVER_IMAGE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_MEDIA:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_OPTIONS_VIEW:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_SOCIAL_CONTEXT:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_SUBTITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_TITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field private static final synthetic b:[Lcom/facebook/ads/NativeAdBase$NativeComponentTag;


# instance fields
.field private final a:Lcom/facebook/ads/internal/w/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_ICON"

    sget-object v2, Lcom/facebook/ads/internal/w/b/j;->f:Lcom/facebook/ads/internal/w/b/j;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_TITLE"

    sget-object v2, Lcom/facebook/ads/internal/w/b/j;->g:Lcom/facebook/ads/internal/w/b/j;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_TITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_COVER_IMAGE"

    sget-object v2, Lcom/facebook/ads/internal/w/b/j;->h:Lcom/facebook/ads/internal/w/b/j;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_COVER_IMAGE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_SUBTITLE"

    sget-object v2, Lcom/facebook/ads/internal/w/b/j;->i:Lcom/facebook/ads/internal/w/b/j;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_SUBTITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_BODY"

    sget-object v2, Lcom/facebook/ads/internal/w/b/j;->j:Lcom/facebook/ads/internal/w/b/j;

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_BODY:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_CALL_TO_ACTION"

    sget-object v2, Lcom/facebook/ads/internal/w/b/j;->k:Lcom/facebook/ads/internal/w/b/j;

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_CALL_TO_ACTION:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_SOCIAL_CONTEXT"

    sget-object v2, Lcom/facebook/ads/internal/w/b/j;->l:Lcom/facebook/ads/internal/w/b/j;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_SOCIAL_CONTEXT:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_CHOICES_ICON"

    sget-object v2, Lcom/facebook/ads/internal/w/b/j;->m:Lcom/facebook/ads/internal/w/b/j;

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_CHOICES_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_OPTIONS_VIEW"

    sget-object v2, Lcom/facebook/ads/internal/w/b/j;->o:Lcom/facebook/ads/internal/w/b/j;

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_OPTIONS_VIEW:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_MEDIA"

    sget-object v2, Lcom/facebook/ads/internal/w/b/j;->n:Lcom/facebook/ads/internal/w/b/j;

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_MEDIA:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_TITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_COVER_IMAGE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_SUBTITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_BODY:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_CALL_TO_ACTION:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_SOCIAL_CONTEXT:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_CHOICES_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_OPTIONS_VIEW:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_MEDIA:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    aput-object v1, v0, v12

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->b:[Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/facebook/ads/internal/w/b/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/w/b/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->a:Lcom/facebook/ads/internal/w/b/j;

    return-void
.end method

.method public static tagView(Landroid/view/View;Lcom/facebook/ads/NativeAdBase$NativeComponentTag;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->a:Lcom/facebook/ads/internal/w/b/j;

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/w/b/j;->a(Landroid/view/View;Lcom/facebook/ads/internal/w/b/j;)V

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeComponentTag;
    .locals 1

    const-class v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/NativeAdBase$NativeComponentTag;
    .locals 1

    sget-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->b:[Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    invoke-virtual {v0}, [Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    return-object v0
.end method
