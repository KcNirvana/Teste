.class public Lcom/miui/zeus/columbus/remote/d;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;


# direct methods
.method private constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/zeus/columbus/remote/d;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/zeus/columbus/remote/d;->b:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/zeus/columbus/remote/d;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/zeus/columbus/remote/d;->b:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    return-void
.end method

.method public static a(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)Lcom/miui/zeus/columbus/remote/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;",
            ")",
            "Lcom/miui/zeus/columbus/remote/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/zeus/columbus/remote/d;

    invoke-direct {v0, p0}, Lcom/miui/zeus/columbus/remote/d;-><init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/miui/zeus/columbus/remote/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/miui/zeus/columbus/remote/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/zeus/columbus/remote/d;

    invoke-direct {v0, p0}, Lcom/miui/zeus/columbus/remote/d;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/remote/d;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/columbus/remote/d;->b:Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
