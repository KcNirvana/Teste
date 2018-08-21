.class Lcom/miui/voiceassist/mvs/client/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/voiceassist/mvs/client/a;


# direct methods
.method constructor <init>(Lcom/miui/voiceassist/mvs/client/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voiceassist/mvs/client/c;->b:Lcom/miui/voiceassist/mvs/client/a;

    iput p2, p0, Lcom/miui/voiceassist/mvs/client/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/c;->b:Lcom/miui/voiceassist/mvs/client/a;

    invoke-static {v0}, Lcom/miui/voiceassist/mvs/client/a;->a(Lcom/miui/voiceassist/mvs/client/a;)Lcom/miui/voiceassist/mvs/client/MvsClientManager$MvsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/c;->b:Lcom/miui/voiceassist/mvs/client/a;

    invoke-static {v0}, Lcom/miui/voiceassist/mvs/client/a;->a(Lcom/miui/voiceassist/mvs/client/a;)Lcom/miui/voiceassist/mvs/client/MvsClientManager$MvsCallback;

    move-result-object v0

    iget v1, p0, Lcom/miui/voiceassist/mvs/client/c;->a:I

    iget v2, p0, Lcom/miui/voiceassist/mvs/client/c;->a:I

    invoke-static {v2}, Lcom/miui/voiceassist/mvs/common/MvsError;->codeToStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/voiceassist/mvs/client/MvsClientManager$MvsCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
