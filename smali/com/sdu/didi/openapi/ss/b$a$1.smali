.class Lcom/sdu/didi/openapi/ss/b$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/openapi/ss/b$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/ss/b$a;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/ss/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/ss/b$a$1;->a:Lcom/sdu/didi/openapi/ss/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/b$a$1;->a:Lcom/sdu/didi/openapi/ss/b$a;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/ss/b$a;->dismiss()V

    return-void
.end method
