.class public final Lcom/bumptech/glide/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c;


# static fields
.field private static final a:Lcom/bumptech/glide/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/h/a;

    invoke-direct {v0}, Lcom/bumptech/glide/h/a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/h/a;->a:Lcom/bumptech/glide/h/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/h/a;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/h/a;->a:Lcom/bumptech/glide/h/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    return-void
.end method
