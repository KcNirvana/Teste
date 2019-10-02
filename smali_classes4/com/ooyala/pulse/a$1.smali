.class final Lcom/ooyala/pulse/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/pulse/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/pulse/a;


# direct methods
.method constructor <init>(Lcom/ooyala/pulse/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/a$1;->a:Lcom/ooyala/pulse/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ooyala/adtech/Ad;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/a$1;->a:Lcom/ooyala/pulse/a;

    invoke-static {v0, p1}, Lcom/ooyala/pulse/a;->a(Lcom/ooyala/pulse/a;Lcom/ooyala/adtech/Ad;)V

    return-void
.end method
