.class Lcom/facebook/ads/internal/j/d$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/j/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/j/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/ads/internal/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/j/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Lcom/facebook/ads/internal/j/f$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/j/f;Lcom/facebook/ads/internal/j/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/j/f<",
            "TT;>;",
            "Lcom/facebook/ads/internal/j/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/j/d$a;->a:Lcom/facebook/ads/internal/j/f;

    iput-object p3, p0, Lcom/facebook/ads/internal/j/d$a;->b:Lcom/facebook/ads/internal/j/a;

    iput-object p1, p0, Lcom/facebook/ads/internal/j/d$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/j/d$a;->a:Lcom/facebook/ads/internal/j/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/f;->b()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lcom/facebook/ads/internal/j/d$a;->a:Lcom/facebook/ads/internal/j/f;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/f;->c()Lcom/facebook/ads/internal/j/f$a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/j/d$a;->d:Lcom/facebook/ads/internal/j/f$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/j/d$a;->c:Landroid/content/Context;

    const-string v2, "database"

    sget v3, Lcom/facebook/ads/internal/w/h/b;->x:I

    invoke-static {v1, v2, v3, p1}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    sget-object p1, Lcom/facebook/ads/internal/j/f$a;->a:Lcom/facebook/ads/internal/j/f$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/j/d$a;->d:Lcom/facebook/ads/internal/j/f$a;

    :goto_1
    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/j/d$a;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/j/d$a;->d:Lcom/facebook/ads/internal/j/f$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/j/d$a;->b:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/j/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/j/d$a;->b:Lcom/facebook/ads/internal/j/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/j/d$a;->d:Lcom/facebook/ads/internal/j/f$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/f$a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/j/d$a;->d:Lcom/facebook/ads/internal/j/f$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/j/f$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/j/a;->a(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/facebook/ads/internal/j/d$a;->b:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/a;->a()V

    return-void
.end method
