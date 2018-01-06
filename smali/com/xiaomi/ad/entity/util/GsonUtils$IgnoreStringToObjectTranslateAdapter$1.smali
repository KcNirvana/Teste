.class Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;
.super Lcom/a/a/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/ai",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;

.field final synthetic val$delegate:Lcom/a/a/ai;

.field final synthetic val$tokenType:Lcom/a/a/c/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;Lcom/a/a/ai;Lcom/a/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->this$0:Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;

    iput-object p2, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$delegate:Lcom/a/a/ai;

    iput-object p3, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$tokenType:Lcom/a/a/c/a;

    invoke-direct {p0}, Lcom/a/a/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$tokenType:Lcom/a/a/c/a;

    invoke-virtual {v0}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/ad/entity/util/GsonUtils;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->this$0:Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;

    invoke-static {v1}, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;->access$100(Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAF: skip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " which has customized DESERIALIZER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/ad/internal/common/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$delegate:Lcom/a/a/ai;

    invoke-virtual {v0, p1}, Lcom/a/a/ai;->read(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/a/a/d/c;->f:Lcom/a/a/d/c;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/a;->n()V

    iget-object v1, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->this$0:Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;

    invoke-static {v1}, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;->access$100(Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAF: skip string value for type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/ad/internal/common/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$delegate:Lcom/a/a/ai;

    invoke-virtual {v0, p1}, Lcom/a/a/ai;->read(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$delegate:Lcom/a/a/ai;

    invoke-virtual {v0, p1}, Lcom/a/a/ai;->read(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/a/a/d/d;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/d;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;->val$delegate:Lcom/a/a/ai;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/ai;->write(Lcom/a/a/d/d;Ljava/lang/Object;)V

    return-void
.end method
