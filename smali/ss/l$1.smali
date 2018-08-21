.class final Lss/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Lss/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lss/q;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/q;",
            ")",
            "Ljava/util/List",
            "<",
            "Lss/k;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lss/q;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/q;",
            "Ljava/util/List",
            "<",
            "Lss/k;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
