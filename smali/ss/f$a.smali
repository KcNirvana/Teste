.class public final Lss/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lss/ss/gq/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/f$a;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lss/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/f$a;->a:Ljava/util/List;

    iget-object v0, p0, Lss/f$a;->a:Ljava/util/List;

    invoke-static {p1}, Lss/f;->a(Lss/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lss/f;->b(Lss/f;)Lss/ss/gq/f;

    move-result-object v0

    iput-object v0, p0, Lss/f$a;->b:Lss/ss/gq/f;

    return-void
.end method

.method static synthetic a(Lss/f$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lss/f$a;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lss/f$a;)Lss/ss/gq/f;
    .locals 1

    iget-object v0, p0, Lss/f$a;->b:Lss/ss/gq/f;

    return-object v0
.end method


# virtual methods
.method public a(Lss/ss/gq/f;)Lss/f$a;
    .locals 0

    iput-object p1, p0, Lss/f$a;->b:Lss/ss/gq/f;

    return-object p0
.end method

.method public a()Lss/f;
    .locals 2

    new-instance v0, Lss/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/f;-><init>(Lss/f$a;Lss/f$1;)V

    return-object v0
.end method
