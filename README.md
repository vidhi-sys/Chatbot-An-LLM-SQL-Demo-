# 🍬 Sweet Shop Chatbot: An LLM & SQL Demo 🍭🍫🍭
https://github.com/vidhi-sys/Chatbot_LLM_SQL_Demo/raw/main/banner.png

A delightful chatbot that lets you explore a virtual sweet shop's inventory using natural language! This project demonstrates how to combine the power of local Large Language Models (LLMs) with SQL databases to create interactive, data-driven applications.

## 🌟 Features

- **Natural Language Queries**: Ask about inventory in plain English
- **Local LLM Processing**: Privacy-focused, no data leaves your computer
- **SQL Database Integration**: Real-time inventory management
- **Customizable**: Easily modify the database or LLM model
- **Educational**: Perfect for learning about RAG and LLM-SQL integration

## 🧠 How the Magic Works

1. **Your Question**: You ask something like "What's the most expensive chocolate?"
2. **LLM Brainpower**: A local language model understands your query and converts it to SQL
3. **Database Query**: The generated SQL queries your sweet shop database
4. **Sweet Response**: You get a natural language answer with the requested information

```
[Your Question] --> [LLM converts to SQL] --> [Database Query] --> [Formatted Response]
```

## 🚀 Quick Start Guide

### Prerequisites

Before we begin, make sure you have:

- A sweet tooth 🍪 (optional but recommended)
- Python 3.8 or higher
- At least 8GB RAM (16GB recommended for smoother LLM operation)

### Step 1: Install Python Libraries

Open your terminal and install the required packages:

```bash
pip install ollama langchain_community langchain_core sqlite3
```

### Step 2: Set Up Ollama and Your LLM

1. **Install Ollama**:
   - Visit [ollama.ai](https://ollama.ai) and download for your OS
   - Or use this quick command for Linux/Mac:
     ```bash
     curl -fsSL https://ollama.ai/install.sh | sh
     ```

2. **Download a Language Model**:
   ```bash
   ollama pull llama3  # Or try mistral, codellama, or phi3
   ```

3. **Start the Ollama Server**:
   ```bash
   ollama serve
   ```

### Step 3: Run the Sweet Shop Chatbot!

```bash
python chatbot.py
```

The script will automatically:
- Create a delicious database of sweets 🍫
- Populate it with tempting treats
- Ready itself for your questions!

## 🍫 Sample Questions to Try

Once everything is running, ask questions like:

- "How many types of chocolate do you have?"
- "What's the most expensive sweet?"
- "Which items have less than 20 in stock?"
- "List all gummy sweets by price"
- "What's the total value of my inventory?"

## 🎨 Customization Ideas

Make this project your own:

1. **Add More Sweets**: Edit the `initialize_database()` function in `chatbot.py`
2. **Change the LLM**: Try different models like `mistral`, `phi3`, or `codellama`
3. **Extend Functionality**: Add user accounts, shopping cart, or order processing
4. **Visualize Data**: Connect to a dashboard tool like Grafana or Tableau

## 📊 Database Schema

The sweet shop database contains a single table:

| Column           | Type    | Description                          |
|------------------|---------|--------------------------------------|
| id               | INTEGER | Primary key, auto-incrementing       |
| sweet_name       | TEXT    | Name of the sweet treat              |
| sweet_type       | TEXT    | Category (chocolate, gummy, etc.)    |
| price            | REAL    | Price in dollars                     |
| quantity_in_stock| INTEGER | How many are available               |
| description      | TEXT    | Mouth-watering description           |

## 🤔 Troubleshooting

| Issue | Solution |
|-------|----------|
| Ollama won't start | Check if your system meets the requirements |
| Model not found | Run `ollama pull <model_name>` again |
| Out of memory | Try a smaller model like `phi3` |
| SQL errors | Check the database connection in the script |

## 🎥 Video Tutorial

For a visual guide, check out our YouTube tutorial:
[Refrences:](https://youtu.be/4wtrl4hnPT8)

## 🙋‍♂️ Need Help?

1. Check the [Ollama documentation](https://github.com/ollama/ollama)
2. Review the [LangChain documentation](https://python.langchain.com/)
3. Open an issue on our GitHub repository

## 🍭 Contributing

Want to make the sweet shop even sweeter? We welcome contributions! Feel free to:

1. Fork the repository
2. Add new features or fix bugs
3. Submit a pull request

## 📜 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🎉 Acknowledgments

- Thanks to the Ollama team for making local LLMs accessible
- The LangChain team for their excellent framework
- All the open-source contributors who make projects like this possible

---

**Ready to explore your sweet shop?** Start asking questions and discover what treats await! 🍬✨

```
⭐ Don't forget to star this repository if you found it helpful!
```
