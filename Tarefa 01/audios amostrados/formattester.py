from pydub import AudioSegment

# Função para verificar a taxa de amostragem e a resolução de bits de um arquivo de áudio
def verificar_audio(audio_file):
    # Carrega o arquivo de áudio
    audio = AudioSegment.from_file(audio_file)
    
    # Obtém a taxa de amostragem (sample rate)
    sample_rate = audio.frame_rate
    
    # Obtém a resolução de bits (bit depth)
    bit_depth = audio.sample_width * 8  # sample_width retorna o número de bytes, então multiplicamos por 8 para obter em bits
    
    return sample_rate, bit_depth

# Exemplo de uso
audio_file = "./frase01_2263750.wav"  # Substitua pelo seu arquivo de áudio
sample_rate, bit_depth = verificar_audio(audio_file)

print(f"Taxa de amostragem: {sample_rate} Hz")
print(f"Resolução de bits: {bit_depth} bits")