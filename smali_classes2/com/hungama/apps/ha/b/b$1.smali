.class Lcom/hungama/apps/ha/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/apps/ha/b/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/apps/ha/b/b;


# direct methods
.method constructor <init>(Lcom/hungama/apps/ha/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/b/b$1;->a:Lcom/hungama/apps/ha/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/b/b$1;->a:Lcom/hungama/apps/ha/b/b;

    iget-object v1, p0, Lcom/hungama/apps/ha/b/b$1;->a:Lcom/hungama/apps/ha/b/b;

    invoke-static {v1}, Lcom/hungama/apps/ha/b/b;->a(Lcom/hungama/apps/ha/b/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/apps/ha/b/b;->a(Lcom/hungama/apps/ha/b/b;Landroid/content/Context;)V

    return-void
.end method
